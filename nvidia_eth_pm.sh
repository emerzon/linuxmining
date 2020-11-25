#!/bin/sh
USERNAME=32VSBG6C8crzyDYhFiEHQVzteL7MDVNukM
POOL=daggerhashimoto.eu.nicehash.com:3353
./nvidia_init.sh
screen -S ethpill -dm sudo bin/OhGodAnETHlargementPill-r2
screen -S nvidia  -dm bin/PhoenixMiner -pool stratum+tcp://$POOL -log 0 -pass x -proto 4 -stales 0 -wal $USERNAME
