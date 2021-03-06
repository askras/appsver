#!/bin/bash

source ./get_current_app_version.sh

file='list_apps'

echo '| Application | Version | Url | Description |' > $file'.md'
echo '| ----------- | ------- | --- | ----------- |' >> $file'.md'
echo '' >> $file'.txt'

for i in ./apps/*.sh; do
    source $i
    version=$( get_current_app_version )
    echo '| ' $app ' | ' $version ' | ' $url ' | ' $description ' | ' >> $file'.md'
    echo  $app  $version >> $file'.txt'
    echo  $app':'  $version
done


