#!/bin/sh

POOL=$(< pools/ETH.pool) 
USER=$(< wallets/ETH.wallet).$(hostname)
./nvidia_init.sh
screen -S ethpill -dm sudo bin/OhGodAnETHlargementPill-r2
screen -S nvidia  -dm ./bin/lolMiner --algo ETHASH --pool stratum+tcp://"$POOL" --user "$USER" 
