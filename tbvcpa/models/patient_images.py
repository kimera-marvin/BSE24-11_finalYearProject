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
            ("none", "None"),
        ],
       tracking=True,
       readonly=True,
    )
    xray_image = fields.Binary()

    def action_predict(self):
        predicted_class = False
        if self.xray_image:
            decoded_image = base64.b64decode(self.xray_image)
            image_path =f'{os.path.dirname(__file__)}/tmp/uploaded_image.png'# Temporary file path
            with open(image_path, 'wb') as f:
                f.write(decoded_image)
            predicted_class = self.predict_image_class(image_path)
        if predicted_class:
            self.sudo().write({'result_predicted':predicted_class})


    # Function to preprocess the uploaded image
    def preprocess_image(self,image_path):
        img = image.load_img(image_path, target_size=(150, 150), color_mode='grayscale')
        img_array = image.img_to_array(img)
        img_array = np.expand_dims(img_array, axis=0)
        return img_array

    
    # Function to predict the class of the image with rejection option
    def predict_image_class(self,image_path, threshold=0.5):
        # Load the trained model (modify the path to your downloaded model)
        model_path = f'{os.path.dirname(__file__)}/trained_model/first_draft_classifier.h5'
        model = load_model(model_path)

        img_array = self.preprocess_image(image_path)
        prediction = model.predict(img_array)[0][0]  # Get the prediction probability
        _logger.info("")
        _logger.info(f"Uploaded Image: {image_path}, Predicted Class: {prediction}")
        _logger.info("")
        if prediction < threshold - 0.2:  # Adjust this margin based on experimentation
            _logger.info("")
            _logger.info("TB")
            _logger.info("")
            return "TB"
        elif prediction > threshold + 0.2:  # Adjust this margin based on experimentation
            _logger.info("")
            _logger.info("CPA")
            _logger.info("")
            return "CPA"
        else:
            _logger.info("")
            _logger.info("None")
            _logger.info("")
            return "none" #Uncertain - Image may not belong to TB or CPA

   
   