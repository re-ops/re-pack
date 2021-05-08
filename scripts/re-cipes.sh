#!/bin/bash -e
wget -q https://github.com/re-ops/re-cipes/releases/download/0.3.9/re-cipes -P /tmp

if md5sum --status -c <(echo fe8f34e4d0287b774d83cb47e43a01bb /tmp/re-cipes); then
 if [ ! -z "$RECIPE" ] ; then
   chmod +x /tmp/re-cipes
   sudo /tmp/re-cipes prov -p $RECIPE
 fi
else
  echo "failed to validate re-cipes download"
  exit 1
fi

