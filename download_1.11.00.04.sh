#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1Ho6cJ-HZhuH47MFjldDceo3q8nRZQi0-" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1Ho6cJ-HZhuH47MFjldDceo3q8nRZQi0-" -o ncsdk-1.11.00.04.tar.gz
tar -zxvf ncsdk-1.11.00.04.tar.gz
rm ncsdk-1.11.00.04.tar.gz

