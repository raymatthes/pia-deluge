#!/usr/bin/env bash

echo ${PIA_USERNAME} > /etc/openvpn/login.conf
echo ${PIA_PASSWORD} >> /etc/openvpn/login.conf

service openvpn start

