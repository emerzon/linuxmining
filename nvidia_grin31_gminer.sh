#!/bin/bash
#./nvidia_init.sh
POOL=$(< pools/grin.pool)
screen -mS grin ./bin/miner --algo grin31 --server ${POOL%%:*} --port ${POOL#*:} --user $(< wallets/NH2.address)
