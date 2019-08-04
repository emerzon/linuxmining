#!/bin/bash

# Change the following address to your GRIN addr.
./nvidia_init.sh
 
screen -mS nvidia ./bin/CryptoDredge -a cngpu -o $(< pools/RYO.pool) -u $(< wallets/RYO.address) -p x
