#!/bin/bash

# IMPORTANT: USE THIS SCRIPT WITH YOUR OWN RENSPONSIBILITY
# DO NOT USE IT IN A SERVER THAT YOU ARE NOT AUTHORIZED TO DO SO

rm -rf ./stemerot-site-wget

wget \
    --mirror \
    --convert-links \
    --adjust-extension \
    --page-requisites \
    --no-parent \
    --wait 1 --limit-rate=100K \
    -P "./stemerot-site-wget/" \
    https://stemerot.com | tee ./stemerot-site-wget/wget-logs.txt
