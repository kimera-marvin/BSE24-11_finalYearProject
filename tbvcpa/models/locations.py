# -*- coding: utf-8 -*-

from odoo import api, fields, models, _, tools, Command
import logging
_logger = logging.getLogger(__name__)
import json


class Region(models.Model):
    _name = "region"
    _inherit = ['mail.thread','mail.activity.mixin', 'image.mixin']
    _description = "Regions"

    name = fields.Char()
    description = fields.Char()

class District(models.Model):
    _name = "district"
    _inherit = ['mail.thread','mail.activity.mixin', 'image.mixin']
    _description = "Districts"

    name = fields.Char()
    description = fields.Char()
    region_id = fields.Many2one('region')