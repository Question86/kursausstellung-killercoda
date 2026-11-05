#!/usr/bin/env bash
set -Eeuo pipefail
base=/root/kursausstellung
mkdir -p "$base"
exec >"$base/setup.log" 2>&1
trap 'touch "$base/failed"' ERR
printf '%s  %s\n' 'c0c7757ee59f38fbf36ce69d85e9bcbc2786e146bed43cd3f5498d5487cf56d8' "$base/setup.sh" | sha256sum -c -
bash "$base/setup.sh"
touch "$base/ready"
