#!/bin/sh

./nvidia_init.sh
screen -S ethpill -dm sudo bin/OhGodAnETHlargementPill-r2
screen -S nvidia  -dm ./bin/t-rex -a etchash -o stratum+tcp://mine.zergpool.com:9997 -u M8C1jQRnrkwSkDJrcni96Kq67KV5DSDkMT -p c=LTC,mc=ETC
#screen -S nvidia  -dm ./bin/t-rex -a ethash -o stratum+tcp://daggerhashimoto.eu.nicehash.com:3353 -u 32VSBG6C8crzyDYhFiEHQVzteL7MDVNukM.$(hostname)  -p x
