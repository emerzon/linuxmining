#!/bin/bash

# Change the following address to your GRIN addr.
ADDRESS=$(< wallets/NH2.address)
USERNAME=$ADDRESS.$(hostname)
POOL=$(< pools/ct32.pool)
SCHEME=cuckatoo32
PWD=x

./nvidia_init.sh

screen -mS nvidia ./bin/bminer -devices 0,1 -fast 2 -uri $SCHEME://$USERNAME:$PWD@$POOL -api 0.0.0.0:1880
