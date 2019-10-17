#!/bin/bash

./nvidia_init.sh
 
screen -mS nvidia ./bin/CryptoDredge -a x16rv2 -o $(< pools/BITC.pool) -u $(< wallets/LTC.address) -p c=LTC,mc=BITC
