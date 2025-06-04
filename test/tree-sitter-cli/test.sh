#!/bin/sh

set -e

command="tree-sitter"
if ! command -v $command >/dev/null 2>&1; then
	echo "$command not found"
	exit 1
fi
