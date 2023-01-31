#!/bin/bash
macchanger -l > /opt/mrmc.txt
ouimac=$(shuf -n 1 mrmc.txt | awk '{print$3}')
uaamac=$(printf '%02x:%02x:%02x' $[RANDOM%256] $[RANDOM%256] $[RANDOM%256])
macchanger -m "$ouimac:$uaamac" eno1