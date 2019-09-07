#!/bin/bash

# Change the following address to your GRIN addr.
ADDRESS=$(< wallets/grin.address)
USERNAME=$ADDRESS.$(hostname)
POOL=$(< pools/grin.pool)
SCHEME=cuckatoo31
PWD=x

./nvidia_init.sh

screen -mS nvidia ./bin/bminer -fast -nofee -devices 0 -uri $SCHEME://$USERNAME:$PWD@$POOL -api 0.0.0.0:1880
