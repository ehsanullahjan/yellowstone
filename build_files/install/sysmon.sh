#!/bin/bash

set -euxo pipefail

dnf -y install \
	btop \
	nvtop \
	pcp \
	pcp-system-tools

systemctl enable pmcd.service
systemctl enable pmlogger.service
