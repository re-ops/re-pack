#!/bin/bash -e
wget -q https://github.com/re-ops/re-cipes/releases/download/0.1.23/re-cipes -P /tmp

if md5sum --status -c <(echo a047b4f1c64c5b207cc71ba6dbd88658 /tmp/re-cipes); then
 if [ ! -z "$RECIPE" ] ; then
   chmod +x /tmp/re-cipes
   sudo /tmp/re-cipes prov -p $RECIPE
 fi
else
  echo "failed to validate re-cipes download"
  exit 1
fi

