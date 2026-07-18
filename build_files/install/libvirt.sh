#!/bin/bash

set -euxo pipefail

dnf -y install @virtualization-headless
systemctl enable virtqemud.service
