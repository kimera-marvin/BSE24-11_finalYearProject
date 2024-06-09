import torchxrayvision as xrv
import skimage.io
import torch
import torchvision.transforms as transforms
from odoo import api, fields, models, _, tools, Command
import io
import base64


class PatientImagesInherit(models.Model):
    _inherit = "patient.image"


    def get_pathogens(self):
        # Load the image
        # img = skimage.io.imread("Normal-13.png")
        img = skimage.io.imread(io.BytesIO(base64.b64decode(self.xray_image)))

        # Normalize the image
        img = xrv.datasets.normalize(img, 255)  # Convert 8-bit image to [-1024, 1024] range

        # Check the number of dimensions and handle accordingly
        if img.ndim == 3:
            img = img.mean(2)  # Convert RGB to grayscale by averaging the color channels
        elif img.ndim != 2:
            raise ValueError("Unsupported image dimensions")

        # Add a single color channel
        img = img[None, ...]

        # Define the transformation pipeline
        transform = transforms.Compose([
            xrv.datasets.XRayCenterCrop(),
            xrv.datasets.XRayResizer(224)
        ])

        # Apply transformations
        img = transform(img)
        img = torch.from_numpy(img).float()  # Convert to float tensor

        # Add batch dimension
        img = img.unsqueeze(0)

        # Load the model and process the image
        model = xrv.models.DenseNet(weights="densenet121-res224-all")
        model.eval()  # Set model to evaluation mode
        with torch.no_grad():  # Disable gradient calculation
            outputs = model(img)

        # Extract and print the results
        result = dict(zip(model.pathologies, outputs[0].detach().numpy()))
        pathogens = "\n".join([f"{pathogen}: {round(ratio*100,2)}%" for pathogen, ratio in result.items()])
        self.sudo().write({'identified_pathogens':pathogens})
        print("")
        print("")
        print("")
        print(result)
        print("")
        print("")
        print("")


        # {'Atelectasis': 0.32797316,
        #  'Consolidation': 0.42933336,
        #  'Infiltration': 0.5316924,
        #  'Pneumothorax': 0.28849724,
        #  'Edema': 0.024142697,
        #  'Emphysema': 0.5011832,
        #  'Fibrosis': 0.51887786,
        #  'Effusion': 0.27805611,
        #  'Pneumonia': 0.18569896,
        #  'Pleural_Thickening': 0.24489835,
        #  'Cardiomegaly': 0.3645515,
        #  'Nodule': 0.68982,
        #  'Mass': 0.6392845,
        #  'Hernia': 0.00993878,
        #  'Lung Lesion': 0.011150705,
        #  'Fracture': 0.51916164,
        #  'Lung Opacity': 0.59073937,
        #  'Enlarged Cardiomediastinum': 0.27218717}
