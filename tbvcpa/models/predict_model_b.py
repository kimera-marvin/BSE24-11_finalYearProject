import os
import io
import json
from PIL import Image
from torchvision import models
import torchvision.transforms as transforms
import numpy as np
import onnxruntime
import onnx
import datetime
import base64
from pathlib import Path
from odoo import api, fields, models, _, tools, Command

# model

BASE_DIR = Path(__file__).resolve().parent
FILE_NAME = "tubermodel/tuberModel.onnx"
MODEL_PATH = os.path.join(BASE_DIR, FILE_NAME)

ort_session = onnxruntime.InferenceSession(MODEL_PATH)

def to_numpy(tensor):
        return tensor.detach().cpu().numpy() if tensor.requires_grad else tensor.cpu().numpy()


# classes
class_names = ['normal', 'tuberculosis']


def transform_image(image_bytes):
    my_transforms = transforms.Compose([
        transforms.Resize(255),
        transforms.CenterCrop(224),
        transforms.ToTensor(),
        transforms.Normalize(
            [0.485, 0.456, 0.406],
            [0.229, 0.224, 0.225])])
    image = Image.open(io.BytesIO(image_bytes)).convert('RGB')
    return my_transforms(image).unsqueeze(0)


def sigmoid(x):
    return 1.0 / (1.0 + np.exp(-x))


def get_prediction(image_bytes):
    img = transform_image(image_bytes=image_bytes)
    ort_inputs = {ort_session.get_inputs()[0].name: to_numpy(img)}
    ort_outs = ort_session.run(None, ort_inputs)

    img_out = sigmoid(ort_outs[0])
    predicted_idx = np.argmax(img_out[0])
    confidence = round(img_out[0][predicted_idx] * 100, 2)
    return class_names[predicted_idx], confidence


class PatientImagesInherit(models.Model):
    _inherit = "patient.image"

    

    def get_result(self,image_bytes):
        start_time = datetime.datetime.now()
        class_name, confidence = get_prediction(image_bytes)
        end_time = datetime.datetime.now()
        time_diff = (end_time - start_time)
        execution_time = f'{round(time_diff.total_seconds() * 1000)} ms'
        result = {
                "class_name": class_name,
                "confidence": confidence
            }
        
        return result
