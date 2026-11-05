#!/usr/bin/env bash
set -Eeuo pipefail
printf '%s  %s\n' 'c0c7757ee59f38fbf36ce69d85e9bcbc2786e146bed43cd3f5498d5487cf56d8' /root/kursausstellung/setup.sh | sha256sum -c -
bash /root/kursausstellung/setup.sh
