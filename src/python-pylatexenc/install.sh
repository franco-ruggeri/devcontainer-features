#!/bin/sh

set -e

. /etc/os-release
if [ "$ID" = "debian" ]; then
	version=$(echo "$VERSION_ID" | awk -F. '{print $1}')
	if [ "$version" -lt 12 ]; then
		echo "Unsupported Debian version $VERSION_ID. Only Debian 12 or later is supported."
		exit 1
	fi
elif [ "$ID" = "ubuntu" ]; then
	version=$(echo "$VERSION_ID" | awk -F. '{print $1}')
	if [ "$version" -lt 22 ]; then
		echo "Unsupported Ubuntu version $VERSION_ID. Only Ubuntu 22.04 or later is supported."
		exit 1
	fi
else
	echo "Unsupported distribution $ID. Only Debian and Ubuntu are supported."
	exit 1
fi

apt-get update
apt-get install -y python3-pylatexenc
