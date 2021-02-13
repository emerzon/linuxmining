#!/bin/bash

POOL=$(< pools/CTXC.pool) 
USER=$(< wallets/CTXC.wallet).$(hostname)
./nvidia_init.sh
screen -S nvidia  -dm ./bin/lolMiner --algo C30CTX --pool stratum+tcp://"$POOL" --user "$USER" 
