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
import cv2
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
        _logger.info("")
        _logger.info("CALLED BY APP")
        _logger.info("CALLED BY APP")
        _logger.info("")
        # return "CREATED YEYE"
        
        result = {'result_predicted': new_creation.action_predict()}

        # Convert the dictionary to a JSON string
        result_json = json.dumps(result)
        return result_json

    def action_predict(self):
        predicted_class = False
        if self.xray_image:
            image_bytes = base64.b64decode(self.xray_image)
            result = self.get_result(image_bytes)
            _logger.info("result")
            _logger.info(result)
            _logger.info("result")
            if result.get('class_name') == 'normal':
                predicted_class = 'Normal'
            elif result.get('class_name') == 'tuberculosis':
                if result.get('confidence')>60:
                    predicted_class = 'TB'
            else:
                decoded_image = base64.b64decode(self.xray_image)
                image_path =f'{os.path.dirname(__file__)}/tmp/uploaded_image.png'# Temporary file path
                with open(image_path, 'wb') as f:
                    f.write(decoded_image)
                predicted_class = self.predict_image_class(image_path)
        if predicted_class:
            self.sudo().write({'result_predicted':predicted_class})
        return predicted_class


    # Function to preprocess the uploaded image
    def preprocess_image(self,image_path):
        img = image.load_img(image_path, target_size=(150, 150), color_mode='grayscale')
        img_array = image.img_to_array(img)
        img_array = np.expand_dims(img_array, axis=0)
        return img_array

    
    # Function to predict the class of the image with rejection option
    def predict_image_class(self,image_path, threshold=0.5):
        # Load the trained model (modify the path to your downloaded model)
        model_path = f'{os.path.dirname(__file__)}/trained_model/first_draft_classifier_v_15.h5'
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


        



    def process_image_segment(self):
       
        for i in range(0,10):
            print(tf.__version__[0])
        model_path = f'{os.path.dirname(__file__)}/trained_model/lung_seg_valiou_088.h5'
        
        model = load_model(model_path)
        for i in range(0,10):
            print("hwrew 1")
        
        for record in self:
            if record.xray_image:
                img_data = base64.b64decode(record.xray_image)
                img_array = np.frombuffer(img_data, dtype=np.uint8)
                img = cv2.imdecode(img_array, cv2.IMREAD_COLOR)
                
                width, height = img.shape[1], img.shape[0]
                img_resized = cv2.resize(img, (256, 256))
                img_resized = cv2.cvtColor(img_resized, cv2.COLOR_BGR2RGB).astype(np.float32)
                
                mask = model.predict(np.expand_dims(img_resized, axis=0))
                mask[mask < 0.5] = 0.0
                mask[mask > 0.5] = 1.0
                
                img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
                img_resized_gray = cv2.resize(img_gray, (256, 256))
                masked_img = np.squeeze(img_resized_gray * mask.reshape(256, 256))
                masked_img_resized = cv2.resize(masked_img, (width, height)).astype(np.int16)
                
                # Convert processed image to base64
                _, buffer = cv2.imencode('.png', masked_img_resized)
                processed_image_base64 = base64.b64encode(buffer).decode('utf-8')
                
                record.segmented_image = processed_image_base64



    def check_image(self):
        for record in self:
            if record.xray_image:
                image_data = base64.b64decode(record.xray_image)

                segmented_image = self.segment_image(image_data)
                record.segmented_image = segmented_image.encode('base64')

    def segment_image(self, image_data):
        # Load your pre-trained model
        model_path = f'{os.path.dirname(__file__)}/trained_model/lung_seg_valiou_088.h5'
        model = load_model(model_path)
        # model = tf.keras.models.load_model('/path/to/your/model.h5')

        # Decode the base64 image data
        image_decoded = base64.b64decode(image_data)
        image_np = np.frombuffer(image_decoded, np.uint8)
        image_np = cv2.imdecode(image_np, cv2.IMREAD_GRAYSCALE)

        # Save the decoded image to a temporary path for processing
        temp_image_path = '/tmp/temp_image.png'
        cv2.imwrite(temp_image_path, image_np)

        # Segment the image
        mask, masked_image, chest_image = SegmentImage(model, temp_image_path)

        # Encode the segmented image to save it in Odoo
        _, buffer = cv2.imencode('.png', masked_image)
        segmented_image_encoded = base64.b64encode(buffer).decode('utf-8')

        return segmented_image_encoded


    def SegmentImage(model,path,img_shape = (512,512),threshold = 0.5):
        '''
        **********Input**************
        model: segmentation model (h5)
        path: filepath to image (string)
        img_shape: shape of the image(IMG_WIDTH,IMG_HEIGHT) used in segmenation model
        threshold: float value varing between 0 and 1, thresholding the mask
        *********Output*************
        return: Segment mask, segmented image, original image
        '''
        IMG_WIDTH,IMG_HEIGHT = img_shape
        ori_x = cv2.imread(path, cv2.IMREAD_GRAYSCALE)
        ori_x = cv2.resize(ori_x, (IMG_HEIGHT,IMG_WIDTH))
        x = ori_x/255.0
        x = x.astype(np.float32)
        x = np.expand_dims(x, axis=0)
        y_pred = model.predict(x)[0] > threshold
        y_pred = y_pred.astype(np.int32)
        plt.imsave('mask.jpeg',np.squeeze(y_pred),cmap='gray')
        maskapply = cv2.imread('mask.jpeg')
        maskapply = cv2.cvtColor(maskapply, cv2.COLOR_BGR2GRAY)
        chest_image = ori_x
        chest_image = cv2.resize(chest_image, (IMG_HEIGHT, IMG_WIDTH),interpolation = cv2.INTER_NEAREST)
        masked_image = cv2.bitwise_and(maskapply,chest_image)
        return maskapply,masked_image,chest_image






