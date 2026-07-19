#!/bin/bash

set -euxo pipefail

EXCLUDED_PACKAGES=(
	toolbox
)
dnf -y remove "${EXCLUDED_PACKAGES[@]}"

INCLUDED_PACKAGES=(
	bat
	distrobox
	eza
	fastfetch
	fd-find
	fzf
	glibc-langpack-en
	grc
	ripgrep
	tealdeer
	tmux
	trash-cli
	vim
	zoxide
	zsh
)
dnf -y install "${INCLUDED_PACKAGES[@]}"
