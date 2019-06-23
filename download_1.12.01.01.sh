#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1Swr1cJ6RpCzF6dG0NmehS27gWd7NbACd" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1Swr1cJ6RpCzF6dG0NmehS27gWd7NbACd" -o ncsdk-1.12.01.01.tar.gz
tar -zxvf ncsdk-1.12.01.01.tar.gz
rm ncsdk-1.12.01.01.tar.gz

