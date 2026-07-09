#!/bin/bash

set -ouex pipefail

INCLUDED_PACKAGES=(
	cockpit
	cockpit-machines
	cockpit-networkmanager
	cockpit-podman
	cockpit-selinux
	cockpit-storaged
)
dnf -y install "${INCLUDED_PACKAGES[@]}"

systemctl enable cockpit.socket
