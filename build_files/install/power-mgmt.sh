#!/bin/bash

set -euxo pipefail

dnf -y install tuned
systemctl enable tuned.service
