# set environment variables

export IMAGE_TAG="ray/pia-deluge:1.0"
export CONTAINER_NAME=agassi
export TORRENTS=${HOME}/media-sg/media/torrents

export PIA_USERNAME="$(cat ${HOME}/secrets/pia_username.txt)"
export PIA_PASSWORD="$(cat ${HOME}/secrets/pia_password.txt)"

echo "Using PIA username: '${PIA_USERNAME}'"

