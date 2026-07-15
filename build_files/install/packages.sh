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
	glibc-langpack-en
	grc
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
