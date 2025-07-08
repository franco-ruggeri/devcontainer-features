#!/bin/sh

set -e

. /etc/os-release
if [ "$ID" != "debian" ] && [ "$ID" != "ubuntu" ]; then
	echo "Unsupported distribution $ID. Only Debian and Ubuntu are supported."
	exit 1
fi

apt-get update
apt-get install -y fd-find

# On Ubuntu, fd is installed as `fdfind`
# Create a symlink to make it available as `fd`
# See https://github.com/sharkdp/fd?tab=readme-ov-file#on-ubuntu
ln -s $(which fdfind) /usr/bin/fd
