#!/bin/bash

set -ouex pipefail

rsync -rvK /ctx/system_files/ /

/ctx/build_files/install/rocm.sh
/ctx/build_files/install/rpmfusion.sh

/ctx/build_files/install/docker.sh
/ctx/build_files/install/podman.sh
/ctx/build_files/install/libvirt.sh

