#!/bin/bash
screen -dmS cpu ./bin/xmrig -t 16 -a rx/loki -o $(< pools/LOKI.pool) -u $(< wallets/LOKI.address) -p x
