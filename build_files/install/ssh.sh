#!/bin/bash

set -ouex pipefail

INCLUDED_PACKAGES=(
	et
	mosh
	openssh-server
)
dnf -y install "${INCLUDED_PACKAGES[@]}"

systemctl enable sshd.service
systemctl enable et.service
