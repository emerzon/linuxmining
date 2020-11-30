#!/bin/sh

./nvidia_init.sh
screen -S ethpill -dm sudo bin/OhGodAnETHlargementPill-r2
screen -S nvidia  -dm ./bin/t-rex -a ethash -o stratum+tcp://daggerhashimoto.eu.nicehash.com:3353 -u 32VSBG6C8crzyDYhFiEHQVzteL7MDVNukM.$(hostname)  -p x
