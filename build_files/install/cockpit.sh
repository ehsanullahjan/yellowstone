#!/bin/bash

set -euxo pipefail

dnf -y --setopt=install_weak_deps=False install \
	cockpit \
	cockpit-machines \
	cockpit-networkmanager \
	cockpit-podman \
	cockpit-selinux \
	cockpit-storaged

systemctl enable cockpit.socket
firewall-offline-cmd --service=cockpit
