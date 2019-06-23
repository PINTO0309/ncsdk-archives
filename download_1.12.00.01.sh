#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1br_HuLvbD1NKYXLulkdXDstHxul8DZsA" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1br_HuLvbD1NKYXLulkdXDstHxul8DZsA" -o ncsdk-1.12.00.01.tar.gz
tar -zxvf ncsdk-1.12.00.01.tar.gz
rm ncsdk-1.12.00.01.tar.gz

