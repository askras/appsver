#!/bin/bash

app='Libre Office'
url='https://www.libreoffice.org/download/download/'
description='LibreOffice is a free and powerful office suite, and a successor to OpenOffice.org. '

url_get_version='https://www.libreoffice.org/download/download/'
prefix_match='<span class="dl_version_number">'
suffix_match='</span>'
match='[0-9]{1}.[0-9]{1}(|.[0-9]{1})'
