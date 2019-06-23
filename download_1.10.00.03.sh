#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1sMeoiswhavvlPz98NoeR_6fQJBYrAwU0" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1sMeoiswhavvlPz98NoeR_6fQJBYrAwU0" -o ncsdk-1.10.00.03.tar.gz
tar -zxvf ncsdk-1.10.00.03.tar.gz
rm ncsdk-1.10.00.03.tar.gz

