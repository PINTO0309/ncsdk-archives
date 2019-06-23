#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1KNy934j9LGaDu3unCg0828KKXcx4KmVr" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1KNy934j9LGaDu3unCg0828KKXcx4KmVr" -o ncsdk-1.09.00.05.tar.gz
tar -zxvf ncsdk-1.09.00.05.tar.gz
rm ncsdk-1.09.00.05.tar.gz

