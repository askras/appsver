#!/bin/bash

source ./get_current_app_version.sh

file='list_apps.txt'

echo '' >> $file

for i in ./apps/*.sh; do
    source $i
    version=$( get_current_app_version )
    echo  $app  $version >> $file
done