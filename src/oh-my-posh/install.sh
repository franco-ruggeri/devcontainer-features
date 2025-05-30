#!/bin/sh

set -e

install_path="$_REMOTE_USER_HOME/.local/bin"
mkdir -p $install_path
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d $install_path
