#!/bin/bash

set -euxo pipefail

dnf -y install et mosh openssh-server

systemctl enable sshd.service
firewall-offline-cmd --service=ssh

systemctl enable et.service
firewall-offline-cmd --service=et

firewall-offline-cmd --service=mosh
