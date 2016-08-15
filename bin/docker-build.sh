#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${DIR}/env.sh"

docker build \
       -t ${IMAGE_TAG} \
       .

