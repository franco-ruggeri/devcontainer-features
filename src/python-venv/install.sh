#!/bin/sh

set -e

. /etc/os-release
if [ "$ID" != "debian" ] && [ "$ID" != "ubuntu" ]; then
	echo "Unsupported distribution $ID. Only Debian and Ubuntu are supported."
	exit 1
fi

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y python3-venv
