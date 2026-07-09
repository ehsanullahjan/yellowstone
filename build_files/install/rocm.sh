#!/bin/bash

set -ouex pipefail

dnf -y install \
	rocm-smi \
	rocminfo \
	rocm-cmake \
	rocm-core
