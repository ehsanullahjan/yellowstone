#!/bin/bash

set -euxo pipefail

dnf -y install \
	cockpit \
	cockpit-machines \
	cockpit-networkmanager \
	cockpit-podman \
	cockpit-selinux \
	cockpit-storaged

systemctl enable cockpit.socket
firewall-offline-cmd --service=cockpit
