#!/bin/bash

./nvidia_init.sh
POOL=$(<pools/ETH.pool)
WALLET=$(<wallets/ETH.wallet)
screen -S ethpill -dm sudo bin/OhGodAnETHlargementPill-r2
screen -S nvidia  -dm ./bin/t-rex -a ethash -o stratum+tcp://"${POOL}" -u "${WALLET}.$(hostname)" -p x
