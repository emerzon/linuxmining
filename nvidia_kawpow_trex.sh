#!/bin/bash
cd "$(dirname "$0")"

./nvidia_init.sh
 
screen -dmS nvidia ./bin/t-rex -a kawpow -o $(< pools/kawpow.pool) -u $(< wallets/LTC.address) -p c=LTC
