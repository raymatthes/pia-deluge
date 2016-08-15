# pia openvpn and deluge
#
# docker build -t ray/pia-deluge .
#
FROM ubuntu:16.04
MAINTAINER Ray Matthes<ray.matthes@gmail.com>
WORKDIR "/root"
#
# fix timezone
#
ENV TZ=America/Denver
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#
# scripts
#
COPY src/bin/*.sh ./
RUN chmod +x *.sh 

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
# configure vpn
#
RUN mkdir /root/openvpn
COPY src/pia/openvpn/2016-07-10/openvpn.zip /root/openvpn/openvpn.zip
WORKDIR "/etc/openvpn"
RUN unzip /root/openvpn/openvpn.zip
RUN cp CA\ Toronto.ovpn pia-ca-toronto.conf
RUN sed -i 's/auth-user-pass/auth-user-pass login.conf/' pia-ca-toronto.conf
RUN touch login.conf
RUN chmod 400 login.conf
RUN echo 'AUTOSTART="pia-ca-toronto"' >> /etc/default/openvpn

#
# configure deluge
#

# cleanup
WORKDIR "/root"
RUN rm /core

