#!/bin/bash

./nvidia_init.sh
 
screen -mS nvidia ./bin/t-rex -d 0 -a x16rv2 -o $(< pools/BITC.pool) -u $(< wallets/LTC.address) -p c=LTC
