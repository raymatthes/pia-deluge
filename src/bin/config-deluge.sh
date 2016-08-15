#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "using PIA_PORT = ${PIA_PORT}"

deluged

deluge-console "config --set utpex false;"
deluge-console "config --set upnp false;"
deluge-console "config --set dht false;"
deluge-console "config --set lsd false;"
deluge-console "config --set natpmp false;"

deluge-console "config --set listen_ports (${PIA_PORT}, ${PIA_PORT});"

