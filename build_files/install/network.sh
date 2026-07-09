#!/bin/bash

set -ouex pipefail

INCLUDED_PACKAGES=(
	NetworkManager-wifi
	et
	mosh
	ngrep
	nmap
	rsync
	socat
	wpa_supplicant
)
dnf -y install "${INCLUDED_PACKAGES[@]}"

systemctl enable et.service
