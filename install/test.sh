#!/usr/bin/env bash

msg_info "Installing NetBox (Patience)"
cd /opt
echo $(curl -s https://github.com/netbox-community/netbox/tags | grep -m 1  /netbox-community/netbox/releases/tag/ ) | read message
RELEASE="${message:105:5}"
wget -q "https://github.com/netbox-community/netbox/archive/refs/tags/v${RELEASE}.zip"
unzip -q "v${RELEASE}.zip"
mv /opt/netbox-${RELEASE}/ /opt/netbox
