#!/bin/bash

set -ouex pipefail

INCLUDED_PACKAGES=(
	bat
	btop
	distrobox
	et
	eza
	fastfetch
	fd-find
	fzf
	grc
	lm_sensors
	lshw
	mosh
	ngrep
	nmap
	nvtop
	ripgrep
	socat
	tealdeer
	tmux
	trash-cli
	vim
	zoxide
	zsh
)
dnf -y install "${INCLUDED_PACKAGES[@]}"

systemctl enable et.service
