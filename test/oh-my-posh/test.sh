#!/bin/sh

set -e

if ! command -v oh-my-posh &>/dev/null; then
  echo "oh-my-posh not found"
  exit 1
fi
