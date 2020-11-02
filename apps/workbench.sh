#!/bin/bash

app='MySQL Workbench'
Url='https://www.mysql.com/products/workbench/'
description='MySQL Workbench is a unified visual tool for database architects, developers, and DBAs'

url_get_version='https://dev.mysql.com/downloads/workbench/'
prefix_match='<h1>MySQL Workbench '
suffix_match=' </h1>'
match='[0-9]{1}.[0-9]{1}.[0-9]{1}(|[0-9]{1})'