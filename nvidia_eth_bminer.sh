#!/bin/sh

# Change the following address to your ETH addr.

USERNAME=32VSBG6C8crzyDYhFiEHQVzteL7MDVNukM
POOL=daggerhashimoto.eu.nicehash.com:3353
SCHEME=ethash
# Change SCHEME according to your POOL. For example:
# ethash:     Nanopool
# ethproxy:   BTC.com, Ethermine, PandaMiner, Sparkpool
# ethstratum: Antpool.com, BTC.com, F2pool, Huobipool.com, Miningpoolhub
./nvidia_init.sh
screen -S ethpill -dm sudo bin/OhGodAnETHlargementPill-r2
screen -S nvidia  -dm bin/bminer -fast 2 -uri $SCHEME://$USERNAME@$POOL -api 127.0.0.1:1880
