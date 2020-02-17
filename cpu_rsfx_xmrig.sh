#!/bin/bash
screen -dmS cpu sudo ./bin/xmrig --randomx-1gb-pages -a rx/sfx  -o $(< pools/rsfx.pool) -u $(< wallets/LTC.address) -p c=LTC
