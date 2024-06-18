# -*- coding: utf-8 -*-
{
    'name': "tbvcpa",

    'summary': """
            TBvCPA
    """,

    'description': """
        Application to differentiate Active Tuberculosis from Chronic Pulmonary Aspergillosis
    """,
    "license": "LGPL-3",
    'author': "Fantastic Four",
    'website': "",
    'category': 'Uncategorized',
    'version': '0.1',
    'depends': [
        'contacts',
    ],

    'data': [
        
        #--------security files--------#
        'security/ir.model.access.csv',
       
        
        #------data files -------#
 
        #------report files -------#
 
       
       

        #----wizard files -------#
        
        #--------views--------#
        'views/patient_image.xml',
        'views/locations.xml','
        'views/menus.xml',
        
        
       
        
    ],

    "assets": {
        "web.assets_backend": [
            
           
        ],
        "web.assets_qweb": [
        
        ],
        
    },
    
    'images':[
        
    ],
}
