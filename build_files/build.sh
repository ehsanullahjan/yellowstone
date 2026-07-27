#!/bin/bash

set -euxo pipefail

/ctx/build_files/pre-build.sh

/ctx/build_files/install/amd-hwer.sh
/ctx/build_files/install/multimedia.sh

/ctx/build_files/install/firewall.sh
/ctx/build_files/install/wifi.sh
/ctx/build_files/install/ssh.sh
/ctx/build_files/install/vpn.sh

/ctx/build_files/install/cockpit.sh
/ctx/build_files/install/perf-copilot.sh
/ctx/build_files/install/sysmon.sh

/ctx/build_files/install/docker.sh
/ctx/build_files/install/podman.sh
/ctx/build_files/install/libvirt.sh

/ctx/build_files/install/git.sh
/ctx/build_files/install/packages.sh

/ctx/build_files/post-build.sh
