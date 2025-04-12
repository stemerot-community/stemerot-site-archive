#!/bin/bash

# IMPORTANT: USE THIS SCRIPT WITH YOUR OWN RENSPONSIBILITY       
# DO NOT USE IT IN A SERVER THAT YOU ARE NOT AUTHORIZED TO DO SO 

rm -rf ./stemerot-site-httrack

httrack "https://stemerot.com" \
    -O "stemerot-site-httrack" \
    "+*.stemerot.com/*" \
    -v \
    -N1 | tee ./stemerot-site-httrack/httrack-logs.txt

exit 0