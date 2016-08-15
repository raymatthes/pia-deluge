#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${DIR}/env.sh"

docker build \
       -t ${IMAGE_TAG} \
       --build-arg "TZ=${TZ}" \
       --build-arg "PIA_CONFIG=${PIA_CONFIG}" \
       --build-arg "PIA_CONFIG_VERSION=${PIA_CONFIG_VERSION}" \
       .

