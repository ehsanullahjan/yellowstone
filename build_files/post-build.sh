#!/bin/bash

set -euxo pipefail

# Sync shadow files
pwconv && grpconv

# Disable main terra repo
dnf config-manager setopt terra.enabled=0
