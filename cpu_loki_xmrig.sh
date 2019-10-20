#!/bin/bash
screen -dmS cpu ./bin/xmrig-zen2 -a rx/loki -o $(< pools/LOKI.pool) -u $(< wallets/LOKI.address) -p x
