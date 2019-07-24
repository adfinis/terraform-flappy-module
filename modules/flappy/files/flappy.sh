#!/bin/bash

URLENCODED=$(python2 -c "import urllib, sys; print urllib.quote(sys.argv[1])" "${2}")
curl -s ${1}/set-text/${URLENCODED} 2>&1 > /dev/null
