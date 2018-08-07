# pia-deluge
Docker, Ubuntu, PIA, OpenVPN and Deluge

# how to configure vpn
Put a copy of https://www.privateinternetaccess.com/openvpn/openvpn-strong.zip in

```src/pia/openvpn/${PIA_CONFIG_VERSION}```

and then update bin/env.sh.
```
export PIA_CONFIG_VERSION="openvpn-strong-2018-07-16"
```
reference: https://www.privateinternetaccess.com/pages/client-support/

# how to build
```
bin/docker-build.sh
```

# how to run
```
bin/docker-run.sh
```
