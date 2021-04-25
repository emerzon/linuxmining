#!/bin/bash

./nvidia_init.sh
#screen -S ethpill -dm sudo bin/OhGodAnETHlargementPill-r2
screen -S nvidia -dm sudo ./bin/gminer --mt 2 --algo equihash125_4 --server $(< pools/eq125.pool) -u $(< wallets/eq125.wallet) --worker $(hostname) -p x
