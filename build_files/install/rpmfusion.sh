#!/bin/bash

set -ouex pipefail

# Enable rpmfusion and its dependencies
dnf config-manager setopt fedora-cisco-openh264.enabled=1
dnf -y install \
	"https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm" \
	"https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

# Enable add'l multimedia codecs
dnf -y swap ffmpeg-free ffmpeg --allowerasing

# Enable hw-accel for AMD hardware
dnf -y install mesa-va-drivers-freeworld libva-utils

dnf config-manager setopt \
	fedora-cisco-openh264.enabled=0 \
	rpmfusion-free.enabled=0 \
	rpmfusion-free-updates.enabled=0 \
	rpmfusion-nonfree.enabled=0 \
	rpmfusion-nonfree-updates.enabled=0
