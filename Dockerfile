# pia openvpn and deluge
#
# docker build -t ray/pia-deluge .
#
FROM ubuntu:16.04
MAINTAINER Ray Matthes<ray.matthes@gmail.com>
ARG TZ
ARG PIA_CONFIG
ARG PIA_CONFIG_VERSION
ENV TZ=${TZ}
ENV PIA_CONFIG=${PIA_CONFIG}
ENV PIA_CONFIG_VERSION=${PIA_CONFIG_VERSION}
WORKDIR "/root"

#
# fix timezone
#
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone

#
# install
#   net-tools is for ifconfig
#
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
    apt-utils \
    openvpn unzip wget \
    net-tools \
    curl \
    deluged deluge-console deluge-web \
 && rm -rf /var/lib/apt/lists/*

#
# copy src and make scripts executable
#
WORKDIR "/root"
COPY src src
RUN chmod +x src/bin/*.sh
RUN echo 'export PATH="$PATH:$HOME/src/bin"' >> /root/.bashrc
RUN echo "alias dc='deluge-console'" >> /root/.bash_aliases
RUN echo "alias go='source run-all.sh'" >> /root/.bash_aliases

#
# configure vpn
#  put a copy of https://www.privateinternetaccess.com/openvpn/openvpn-strong-tcp.zip in src/pia/openvpn/${PIA_CONFIG_VERSION}
#
WORKDIR "/etc/openvpn"
RUN unzip /root/src/pia/openvpn/${PIA_CONFIG_VERSION}/openvpn-strong-tcp.zip
RUN cp "${PIA_CONFIG}.ovpn" pia.conf
RUN sed -i 's/auth-user-pass/auth-user-pass login.conf/' pia.conf
RUN touch login.conf
RUN chmod 400 login.conf
RUN echo 'AUTOSTART="pia"' >> /etc/default/openvpn

# cleanup
WORKDIR "/root"
RUN rm /core

