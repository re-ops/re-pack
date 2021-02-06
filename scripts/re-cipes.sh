#!/bin/bash -e
wget -q https://github.com/re-ops/re-cipes/releases/download/0.3.6/re-cipes -P /tmp

if md5sum --status -c <(echo 78e8c5df0dbb307d5c177811906aae65 /tmp/re-cipes); then
 if [ ! -z "$RECIPE" ] ; then
   chmod +x /tmp/re-cipes
   sudo /tmp/re-cipes prov -p $RECIPE
 fi
else
  echo "failed to validate re-cipes download"
  exit 1
fi

