#!/bin/bash
screen -dmS cpu ./bin/xmrig -t 16 -a rx/wow -o $(< pools/WOW.pool) -u $(< wallets/WOW.address) -p x
