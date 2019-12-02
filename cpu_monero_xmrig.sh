#!/bin/bash
screen -dmS cpu ./bin/xmrig --coin monero -o $(< pools/XMR.pool) -u emerzon.vega -p x
