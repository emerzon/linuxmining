#!/bin/bash
screen -dmS cpu LD_PRELOAD="/usr/lib/x86_64-linux-gnu/libjemalloc.so.2" ./bin/xmrig --coin monero -o $(< pools/XMR.pool) -u emerzon.vega -p x
