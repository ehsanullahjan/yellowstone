#!/bin/bash

set -euxo pipefail

INCLUDED_PACKAGES=(
	et
	mosh
	openssh-server
)
dnf -y install "${INCLUDED_PACKAGES[@]}"

systemctl enable sshd.service
firewall-offline-cmd --service=ssh

systemctl enable et.service
firewall-offline-cmd --service=et

firewall-offline-cmd --service=mosh
