#!/bin/bash

set -euxo pipefail

dnf -y install firewalld
systemctl enable firewalld
