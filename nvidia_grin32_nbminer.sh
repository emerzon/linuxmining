#!/bin/bash

# Change the following address to your GRIN addr.
ADDRESS=$(< wallets/NH2.address)
USERNAME=$ADDRESS.$(hostname)
POOL=$(< pools/ct32.pool)
SCHEME=cuckatoo32
PWD=x

#./nvidia_init.sh

screen -mS nvidia ./bin/nbminer -a $SCHEME -o $POOL -u $USERNAME -long-format -log
