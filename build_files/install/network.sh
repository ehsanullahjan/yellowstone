#!/bin/bash

set -euxo pipefail

dnf -y install et mosh nfs-client-utils openssh-server syncthing

systemctl enable sshd.service
systemctl enable et.service
