#!/bin/bash

set -ouex pipefail

dnf -y install @virtualization-headless
systemctl enable virtqemud.service
