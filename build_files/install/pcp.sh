#!/bin/bash

set -ouex pipefail

dnf -y install pcp pcp-system-tools

systemctl enable pmcd.service
systemctl enable pmlogger.service
