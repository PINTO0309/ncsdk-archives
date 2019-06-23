#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1qCICO_X6Ka_8RKj0c39I1jsI87BNDKdc" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1qCICO_X6Ka_8RKj0c39I1jsI87BNDKdc" -o ncsdk-2.10.01.01.tar.gz
tar -zxvf ncsdk-2.10.01.01.tar.gz
rm ncsdk-2.10.01.01.tar.gz

