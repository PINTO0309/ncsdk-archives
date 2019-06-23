#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1nilIPYXKv7EmCP-u7426OXBW_P3RDsUy" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1nilIPYXKv7EmCP-u7426OXBW_P3RDsUy" -o ncsdk-2.04.00.06.tar.gz
tar -zxvf ncsdk-2.04.00.06.tar.gz
rm ncsdk-2.04.00.06.tar.gz

