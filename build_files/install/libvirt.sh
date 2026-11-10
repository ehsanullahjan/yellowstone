#!/bin/bash

set -euxo pipefail

dnf -y install @virtualization-headless guestfs-tools bcvk
