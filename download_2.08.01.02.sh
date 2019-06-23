#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1FuMpaToEY4mmZ4WRwpgi41JP7KaS4X9S" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1FuMpaToEY4mmZ4WRwpgi41JP7KaS4X9S" -o ncsdk-2.08.01.02.tar.gz
tar -zxvf ncsdk-2.08.01.02.tar.gz
rm ncsdk-2.08.01.02.tar.gz

