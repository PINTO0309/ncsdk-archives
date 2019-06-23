#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1Q_IKki7_fFzDyiZDM0XacT2LQZtuCDY9" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1Q_IKki7_fFzDyiZDM0XacT2LQZtuCDY9" -o ncsdk-2.05.00.02.tar.gz
tar -zxvf ncsdk-2.05.00.02.tar.gz
rm ncsdk-2.05.00.02.tar.gz

