#!/bin/bash

# Change the following address to your GRIN addr.
ADDRESS=$(< wallets/nicehash.address)
USERNAME=$ADDRESS.$(hostname)
POOL=$(< pools/grin.pool)
SCHEME=Cuckaroo29m
PWD=x

./nvidia_init.sh

screen -mS nvidia ./bin/bminer -fast -nofee -uri $SCHEME://$USERNAME:$PWD@$POOL -api 0.0.0.0:1880
