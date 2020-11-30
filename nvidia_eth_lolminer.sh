#!/bin/sh

./nvidia_init.sh
screen -S ethpill -dm sudo bin/OhGodAnETHlargementPill-r2
screen -S nvidia  -dm ./bin/lolMiner --algo ETHASH --pool stratum+tcp://daggerhashimoto.eu.nicehash.com:3353 --user 32VSBG6C8crzyDYhFiEHQVzteL7MDVNukM.$(hostname) 
