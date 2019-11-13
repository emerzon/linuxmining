#!/bin/bash
cd "$(dirname "$0")"

./nvidia_init.sh
 
screen -dmS nvidia ./bin/miniZ --par 192,7 --server $(< pools/equihash192.pool) -u $(< wallets/LTC.address) -p c=LTC
