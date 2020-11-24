#!/bin/sh

./nvidia_init.sh
screen -S ethpill -dm sudo bin/OhGodAnETHlargementPill-r2
screen -S nvidia  -dm ./bin/t-rex -a ethash -o stratum+tcp://mine.zergpool.com:9999 -u M8C1jQRnrkwSkDJrcni96Kq67KV5DSDkMT -p c=LTC,mc=ETC
