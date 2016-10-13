# pia-deluge
Docker, Ubuntu, PIA, OpenVPN and Deluge

# how to configure vpn
Put a copy of https://www.privateinternetaccess.com/openvpn/openvpn.zip in
```sh
src/pia/openvpn/${PIA_CONFIG_VERSION}
```
and then update bin/env.sh.
```sh
export PIA_CONFIG_VERSION="2016-07-10"
```
reference: https://www.privateinternetaccess.com/pages/client-support/
