#!/bin/bash

set -euxo pipefail

dnf -y install NetworkManager-wifi wpa_supplicant
