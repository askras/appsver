#!/bin/bash

source ./get_current_app_version.sh

file='list_apps.md'

echo '| Application | Version | Url | Description |' > $file
echo '| ----------- | ------- | --- | ----------- |' >> $file


for i in ./apps/*.sh; do
    source $i
    version=$( get_current_app_version )
    echo '| ' $app ' | ' $version ' | ' $url ' | ' $description ' | ' >> $file
done


