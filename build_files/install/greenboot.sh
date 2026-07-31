#!/bin/bash

set -euxo pipefail

dnf -y install greenboot greenboot-default-health-checks
systemctl enable greenboot-healthcheck.service
