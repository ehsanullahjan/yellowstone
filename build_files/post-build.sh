#!/bin/bash

set -euxo pipefail

# Sync shadow files
pwconv && grpconv

# Copy custom configs
rsync -rvK --exclude=.gitkeep /ctx/system_files/post-build/ /
