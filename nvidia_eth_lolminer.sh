#!/bin/sh

./nvidia_init.sh
screen -S ethpill -dm sudo bin/OhGodAnETHlargementPill-r2
screen -S nvidia  -dm ./bin/lolMiner --algo ETHASH --pool stratum+tcp://$(< pools/ETH.pool) --user $(< wallets/ETH.wallet).$(hostname) 
