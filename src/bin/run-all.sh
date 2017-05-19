#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

start-vpn.sh
echo "sleeping..."
sleep 5
source set-pia-port.sh
source set-pia-ip.sh
config-deluge.sh
check-vpn.sh

