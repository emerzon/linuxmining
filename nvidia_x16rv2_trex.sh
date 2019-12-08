#!/bin/bash
cd "$(dirname "$0")"

#./nvidia_init.sh
 
screen -dmS nvidia ./bin/t-rex -a x16rv2 -o $(< pools/BITC.pool) -u $(< wallets/LTC.address) -p c=LTC
