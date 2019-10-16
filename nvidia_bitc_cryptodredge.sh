#!/bin/bash

./nvidia_init.sh
 
screen -mS nvidia ./bin/CryptoDredge -a x16rv2 -o $(< pools/BITC.pool) -u $(< wallets/BTC.address) -p c=BTC
