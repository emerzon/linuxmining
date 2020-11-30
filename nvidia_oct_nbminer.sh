#!/bin/bash

# Change the following address to your GRIN addr.
ADDRESS=$(< wallets/NH2.address)
USERNAME=$ADDRESS.$(hostname)
POOL=$(< pools/octopus.pool)
SCHEME=octopus
PWD=x

#./nvidia_init.sh

screen -mS nvidia ./bin/nbminer -a $SCHEME -o $POOL -u $USERNAME -long-format -log
