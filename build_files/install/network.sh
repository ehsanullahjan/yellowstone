#!/bin/bash

set -euxo pipefail

dnf -y install mosh nfs-client-utils openssh-server

systemctl enable sshd.service
firewall-offline-cmd --service=ssh

firewall-offline-cmd --service=mosh
