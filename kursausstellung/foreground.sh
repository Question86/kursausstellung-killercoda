#!/usr/bin/env bash
set -Eeuo pipefail
base=/root/kursausstellung
echo "Die VM und die Ausstellung werden automatisch eingerichtet. Bitte warten ..."
for (( attempt=0; attempt<300; attempt++ )); do
  if [[ -f "$base/ready" || -f "$base/failed" ]]; then
    cat "$base/setup.log"
    [[ -f "$base/ready" ]] && exit 0
    echo "Die Einrichtung ist fehlgeschlagen. Details stehen oben." >&2
    exit 1
  fi
  sleep 2
done
[[ ! -r "$base/setup.log" ]] || tail -n 40 "$base/setup.log"
echo "Die Einrichtung dauert laenger als erwartet. Bitte den Status pruefen." >&2
exit 1
