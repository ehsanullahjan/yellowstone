#!/bin/bash

set -euxo pipefail

dnf -y install borgbackup pciutils lm_sensors lshw sysstat
