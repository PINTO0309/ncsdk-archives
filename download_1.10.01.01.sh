#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1iNSvnVG2HFSzORYoSDZB5CI7TxWY44t5" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1iNSvnVG2HFSzORYoSDZB5CI7TxWY44t5" -o ncsdk-1.10.01.01.tar.gz
tar -zxvf ncsdk-1.10.01.01.tar.gz
rm ncsdk-1.10.01.01.tar.gz

