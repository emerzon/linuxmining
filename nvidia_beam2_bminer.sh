#!/bin/bash

# Change the following address to your GRIN addr.
ADDRESS=$(< wallets/NH2.address)
USERNAME=$ADDRESS.$(hostname)
POOL=$(< pools/BEAM2.pool)
SCHEME=beamhash2
PWD=x

./nvidia_init.sh

screen -mS nvidia ./bin/bminer -fast -nofee -devices 0,1 -uri $SCHEME://$USERNAME:$PWD@$POOL -api 0.0.0.0:1880
