#!/bin/bash
cd "$(dirname "$0")"

./nvidia_init.sh
 
screen -dmS nvidia sudo ./bin/t-rex -a mtp --mt 2 -o $(< pools/MTP.pool) -u $(< wallets/LTC.address) -p c=LTC
