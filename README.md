# pia-deluge
Docker, Ubuntu, PIA, OpenVPN and Deluge

# how to configure vpn
Put a copy of https://www.privateinternetaccess.com/openvpn/openvpn-strong-tcp.zip in

```src/pia/openvpn/${PIA_CONFIG_VERSION}```

and then update bin/env.sh.
```
export PIA_CONFIG_VERSION="2017-02-06"
```

reference: https://www.privateinternetaccess.com/pages/client-support/
