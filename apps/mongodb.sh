#!/bin/bash

app='MongoDB'
url='https://www.mongodb.com/'
description='MongoDB is a general purpose, document-based, distributed database built for modern application developers and for the cloud era.'


url_get_version='https://www.mongodb.com/try/download/enterprise'
prefix_match='name="version" type="select" value="'
suffix_match='"'
match='[0-9]{1}.[0-9]{1}.[0-9]{1}(|[0-9]{1})'


