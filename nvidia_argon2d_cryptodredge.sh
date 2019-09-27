#!/bin/bash
./nvidia_init.sh
 
screen -mS nvidia ./bin/CryptoDredge -d 1 -a argon2d4096 -o $(< pools/XMY.pool) -u $(< wallets/BTC.address) -p c=BTX,zap=XMY-argon2d
