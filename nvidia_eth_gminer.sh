#!/bin/bash

./nvidia_init.sh
#screen -S ethpill -dm sudo bin/OhGodAnETHlargementPill-r2
screen -S nvidia -dm sudo ./bin/gminer --mt 2 --algo ethash --server $(< pools/ETH.pool) -u $(< wallets/ETH.wallet) --worker $(hostname) -p x
