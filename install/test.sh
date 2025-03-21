#!/usr/bin/env bash
cd /opt
TEST=$(curl -s https://github.com/netbox-community/netbox/tags | grep -m 1  /netbox-community/netbox/releases/tag/ )
RELEASE=${TEST:105:5}
wget -q "https://github.com/netbox-community/netbox/archive/refs/tags/v${RELEASE}.zip"
unzip -q "v${RELEASE}.zip"
mv /opt/netbox-${RELEASE}/ /opt/netbox
