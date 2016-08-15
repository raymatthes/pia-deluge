#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${DIR}/env.sh"

docker run \
       --name=${CONTAINER_NAME} \
       --rm \
       --cap-add=NET_ADMIN \
       --device=/dev/net/tun \
       --env PIA_USERNAME=${PIA_USERNAME} \
       --env PIA_PASSWORD=${PIA_PASSWORD} \
       -it \
       -v ${TORRENTS}:/root/Downloads \
       ${IMAGE_TAG} \
       /bin/bash

