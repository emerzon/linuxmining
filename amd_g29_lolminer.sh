#!/bin/bash

# Change the following address to your GRIN addr.
ADDRESS=$(< wallets/NH2.address)
USERNAME=$ADDRESS.$(hostname)
POOL=$(< pools/cockaroom.pool)

screen -mS amd ./bin/lolMiner --coin GRIN-C29M --pool $POOL --user $USERNAME --pass x $@

