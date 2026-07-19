#!/bin/bash

set -euxo pipefail

dnf -y install firewalld
systemctl enable firewalld

firewall-offline-cmd --service=dhcpv6-client
