#!/bin/bash
screen -dmS cpu ./bin/xmrig -a rx/loki -o $(< pools/LOKI.pool) -u $(< wallets/LOKI.address) -p x
