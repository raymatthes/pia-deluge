#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

./start-vpn.sh
echo "sleeping..."
sleep 3
source ./set-pia-port.sh
./config-deluge.sh
