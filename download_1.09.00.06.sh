#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1NQREtl-FjKCY2B898ovjCZgZMVw8NLtk" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1NQREtl-FjKCY2B898ovjCZgZMVw8NLtk" -o ncsdk-1.09.00.06.tar.gz
tar -zxvf ncsdk-1.09.00.06.tar.gz
rm ncsdk-1.09.00.06.tar.gz

