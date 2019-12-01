#!/bin/bash
screen -dmS cpu ./bin/xmrig-i5 --coin monero -o $(< pools/XMR.pool) -u emerzon.vega -p x
