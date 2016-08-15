#!/usr/bin/env bash

wan_ip="$(wget -q -O - ipecho.net/plain)"

echo "ip address: ${wan_ip}"

echo "$(curl -s freegeoip.net/json/${wan_ip})"

