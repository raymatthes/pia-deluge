# set environment variables

export TZ="America/Denver"

export PIA_CONFIG="ca_toronto"
export PIA_CONFIG_VERSION="openvpn-strong-tcp-2021-01-10"
export PIA_ZIP_FILE="openvpn-strong-tcp.zip"

echo "Using PIA config: '${PIA_CONFIG}'"
echo "Using PIA version: '${PIA_CONFIG_VERSION}'"
echo "Using PIA zip file: '${PIA_ZIP_FILE}'"

export IMAGE_TAG="ray/pia-deluge:1.0"
export CONTAINER_NAME=pia-deluge
export TORRENTS=${HOME}/media-sg/media/torrents

export PIA_USERNAME="$(cat ${HOME}/secrets/pia_username.txt)"
export PIA_PASSWORD="$(cat ${HOME}/secrets/pia_password.txt)"

echo "Using PIA username: '${PIA_USERNAME}'"

