#!/bin/bash

set -euxo pipefail

dnf -y install NetworkManager-wifi wpa_supplicant
firewall-offline-cmd --service=dhcpv6-client
