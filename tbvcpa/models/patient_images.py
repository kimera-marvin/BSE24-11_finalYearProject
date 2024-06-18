# -*- coding: utf-8 -*-
from contextlib import nullcontext
import base64

from odoo import api, fields, models, _, tools, Command
from odoo.osv import expression
from odoo.exceptions import UserError, ValidationError
from odoo.tools.sql import SQL
from bisect import bisect_left
from collections import defaultdict
import re
import numpy as np
import matplotlib.pyplot as plt
import os
import tensorflow as tf
 
from tensorflow.keras.preprocessing import image
from tensorflow.keras.models import load_model
import logging
_logger = logging.getLogger(__name__)
import json
from io import BytesIO
from PIL import Image
import requests




class PatientImages(models.Model):
    _name = "patient.image"
    _inherit = ['mail.thread','mail.activity.mixin', 'image.mixin']
    _description = "Patient Images"

    name = fields.Char()
    age  = fields.Integer()
    gender = fields.Selection(
        selection=[
            ("female", "Female"),
            ("male", "Male"),
        ],
        string="Gender", tracking=True,
        )
    result_predicted = fields.Selection(
        selection=[
            ("TB", "Active TB"),
            ("CPA", "CPA"),
            ("Normal", "Normal"),
            ("none", "None"),
        ],
       tracking=True,
       readonly=True,
    )
    xray_image = fields.Binary()
    segmented_image = fields.Binary()
    user_email = fields.Char()
    identified_pathogens = fields.Text()
    confidence_score = fields.Float()
    district_id = fields.Many2one('district')
    region_id = fields.Many2one('region')

    @api.model
    def action_create_custom(self,vals):
        _logger.info("")
        _logger.info("CALLED BY APP")
        _logger.info("CALLED BY APP")
        # _logger.info(vals)
        _logger.info("")
        new_creation = self.env['patient.image'].sudo().create({
            'name':vals.get('name'),
            'age':vals.get('age'),
            'gender':vals.get('gender').lower(),
            'xray_image':vals.get('xray_image'),
            'user_email':vals.get('user_email'),
        })
        if vals.get('region'):
            find_region = self.env['region'].sudo().search([('name','=',vals.get('region'))])
            if not find_region:
                find_region = self.env['region'].sudo().create({
                    'name':vals.get('region'),
                })
            new_creation.sudo().write({
                'region_id':find_region.id,
            })
        if vals.get('district'):
            find_district = self.env['district'].sudo().search([('name','=',vals.get('district'))])
            if not find_district:
                find_district = self.env['district'].sudo().create({
                    'name':vals.get('district'),
                    'region_id':find_region.id,
                })
                new_creation.sudo().write({
                    'district_id':find_district.id,
                })


        _logger.info("")
        _logger.info("CALLED BY APP")
        _logger.info("CALLED BY APP")
        _logger.info("")
        # return "CREATED YEYE"
        
        result = {
            'result_predicted': new_creation.action_predict(),
            'identified_pathogens': new_creation.identified_pathogens,
            'confidence_score': new_creation.confidence_score,
            }

        # Convert the dictionary to a JSON string
        result_json = json.dumps(result)
        return result_json

    def action_predict_bulk(self):
        for rec in self:
            rec.action_predict()

    def action_predict(self):
        predicted_class = False
        predicted_score = False
        if self.xray_image:
            image_bytes = base64.b64decode(self.xray_image)
            result = self.get_result(image_bytes)
            _logger.info("result from TUBERMODEL")
            _logger.info(result)
            _logger.info("result from TUBERMODEL")
            predicted_score = result.get('confidence')
            if result.get('class_name') == 'normal':
                predicted_class = 'Normal'
                
            elif result.get('class_name') == 'tuberculosis' and result.get('confidence') != 100:
                result_cpa = self.get_result_cpa(image_bytes)
                _logger.info("result from ASPERMODEL")
                _logger.info(result_cpa)
                _logger.info("result from ASPERMODEL")
                if result_cpa.get('class_name') == 'CPA':
                    predicted_class = 'CPA'
                    predicted_score = result_cpa.get('confidence')
                else:
                    predicted_class = 'TB'
                    
                    # decoded_image = base64.b64decode(self.xray_image)
                    # image_path =f'{os.path.dirname(__file__)}/tmp/uploaded_image.png'# Temporary file path
                    # with open(image_path, 'wb') as f:
                    #     f.write(decoded_image)
                    # predicted_class = self.predict_image_class(image_path)
        if predicted_class:
            self.sudo().write({
                'result_predicted':predicted_class,
                'confidence_score':predicted_score,
                })
            self.get_pathogens()
        # return predicted_class
        return self.result_predicted

    def get_pathogens(self):
        pass


    # Function to preprocess the uploaded image
    def preprocess_image(self,image_path):
        img = image.load_img(image_path, target_size=(150, 150), color_mode='grayscale')
        img_array = image.img_to_array(img)
        img_array = np.expand_dims(img_array, axis=0)
        return img_array

    
    # Function to predict the class of the image with rejection option
    def predict_image_class(self,image_path, threshold=0.5):
        # Load the trained model (modify the path to your downloaded model)
        model_path = f'{os.path.dirname(__file__)}/trained_model/first_draft_classifier_v_13.h5'
        model = load_model(model_path)


        # Preprocess the uploaded image
        preprocessed_image = self.preprocess_image(image_path)

        # Make predictions
        predictions = model.predict(preprocessed_image)

        # Get class labels
        class_labels = ['CPA', 'Normal', 'TB']  # Replace with your class labels

        # Display the uploaded image
        # display(Image(filename))
        print('predictions')
        print('predictions')
        print(predictions)
        print('predictions')
        print('predictions')
        # Display predictions
        for i, prob in enumerate(predictions[0]):
            _logger.info("")
            _logger.info(f"{class_labels[i]}: {prob}")
            _logger.info("")

        # Get the predicted class label
        predicted_class_index = np.argmax(predictions)
        predicted_class_label = class_labels[predicted_class_index]
        predicted_class_prob = predictions[0][predicted_class_index]
        threshold = 0.85  # Define the threshold probability


        # Check if the predicted class probability is greater than or equal to the threshold
        if predicted_class_prob >= threshold:
            # Predicted class with sufficient confidence
            predicted_class_label = class_labels[predicted_class_index]
            if predicted_class_label == 'Normal':
                predicted_class_label = 'none'
        else:
            # Predicted class with insufficient confidence
            predicted_class_label = 'none'
        _logger.info("")
        _logger.info("Predicted class:")
        _logger.info(predicted_class_label)
        _logger.info("")
        return predicted_class_label


        



    
