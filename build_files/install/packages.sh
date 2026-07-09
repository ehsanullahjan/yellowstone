#!/bin/bash

set -ouex pipefail

INCLUDED_PACKAGES=(
	bat
	btop
	distrobox
	eza
	fastfetch
	fd-find
	fzf
	grc
	lm_sensors
	lshw
	nvtop
	ripgrep
	tealdeer
	tmux
	trash-cli
	vim
	zoxide
	zsh
)
dnf -y install "${INCLUDED_PACKAGES[@]}"
