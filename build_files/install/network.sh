#!/bin/bash

set -ouex pipefail

INCLUDED_PACKAGES=(
	NetworkManager-wifi
	wpa_supplicant
)
dnf -y install "${INCLUDED_PACKAGES[@]}"

firewall-offline-cmd --service=dhcpv6-client
