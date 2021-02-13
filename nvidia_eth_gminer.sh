#!/bin/bash

#./nvidia_init.sh
screen -S ethpill -dm sudo bin/OhGodAnETHlargementPill-r2
screen -S nvidia -dm ./bin/gminer --algo ethash --server $(< pools/ETH.pool) -u $(< wallets/ETH.wallet).$(hostname) -p x
