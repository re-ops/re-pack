#!/bin/bash -e
wget -q https://github.com/re-ops/re-cipes/releases/download/0.1.26/re-cipes -P /tmp

if md5sum --status -c <(echo 30067026e682e05250d42a0c3a62f81b /tmp/re-cipes); then
 if [ ! -z "$RECIPE" ] ; then
   chmod +x /tmp/re-cipes
   sudo /tmp/re-cipes prov -p $RECIPE
 fi
else
  echo "failed to validate re-cipes download"
  exit 1
fi

