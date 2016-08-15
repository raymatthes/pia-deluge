#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PIA_PORT="$(${DIR}/port-forward.sh ${PIA_USERNAME} ${PIA_PASSWORD} | tail -1 | sed 's/[^0-9]//g')"

echo "PIA_PORT = ${PIA_PORT}"

