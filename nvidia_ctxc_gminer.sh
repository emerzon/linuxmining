#!/bin/bash

#./nvidia_init.sh
screen -S nvidia -dm ./bin/gminer --algo cortex --server $(< pools/CTXC.pool) -u $(< wallets/CTXC.wallet).$(hostname) -p x
