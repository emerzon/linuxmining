#!/bin/bash
screen -dmS cpu ./bin/xmrig-zen2 --coin monero -o $(< pools/XMR.pool) -u emerzon.vega -p x
