#!/bin/bash

set -ouex pipefail

dnf -y install firewalld
systemctl enable firewalld
