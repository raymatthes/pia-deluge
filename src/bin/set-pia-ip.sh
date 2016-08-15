#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PIA_DEVICE=`ifconfig | grep -o "tun[0-9]"`
echo "PIA_DEVICE = ${PIA_DEVICE}"

export PIA_IP=`ifconfig ${PIA_DEVICE} | grep -Po "(?<=addr.)[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*"`
echo "PIA_IP = ${PIA_IP}"

