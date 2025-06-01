#!/bin/sh

set -e

if ! command -v oh-my-posh >/dev/null 2>&1; then
	echo "oh-my-posh not found"
	exit 1
fi
