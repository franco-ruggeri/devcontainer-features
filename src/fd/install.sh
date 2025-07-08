#!/bin/sh

set -e

. /etc/os-release
if [ "$ID" != "debian" ] && [ "$ID" != "ubuntu" ]; then
	echo "Unsupported distribution $ID. Only Debian and Ubuntu are supported."
	exit 1
fi

apt-get update
apt-get install -y fd
