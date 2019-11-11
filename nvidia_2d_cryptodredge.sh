#!/bin/bash
./nvidia_init.sh
 
screen -mS nvidia ./bin/CryptoDredge -a argon2d-dyn -o $(< pools/2d.pool) -u $(< wallets/LTC.address) -p c=LTC
