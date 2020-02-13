#!/bin/bash

# Change the following address to your GRIN addr.
ADDRESS=$(< wallets/NH2.address)
USERNAME=$ADDRESS.$(hostname)
POOL=$(< pools/ct31.pool)
SCHEME=cuckatoo31
PWD=x

#./nvidia_init.sh

screen -mS nvidia ./bin/bminer -fast -nofee -uri $SCHEME://$USERNAME:$PWD@$POOL -api 0.0.0.0:1880
