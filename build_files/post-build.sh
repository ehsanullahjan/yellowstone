#!/bin/bash

set -euxo pipefail

# Sync shadow files
pwconv && grpconv

# Disable terra repos
dnf config-manager setopt terra.enabled=0
dnf config-manager setopt terra-mesa.enabled=0
