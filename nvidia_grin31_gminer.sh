#!/bin/sh
./nvidia_init.sh
POOL=$(cat pools/grin.pool)
screen -mS grin ./bin/miner --algo grin31 --server ${POOL%%:*} --port ${POOL#*:} --user $(cat wallets/grin.address)
