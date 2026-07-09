set -ouex pipefail

INCLUDED_PACKAGES=(
	terminus-fonts-console
)
dnf -y install "${INCLUDED_PACKAGES[@]}"
