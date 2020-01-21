#!/bin/bash
./nvidia_init.sh
 
screen -mS nvidia ./bin/CryptoDredge -a argon2d4096 -o $(< pools/XMY.pool) -u $(< wallets/LTC.address) -p c=LTC
