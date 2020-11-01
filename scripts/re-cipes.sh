#!/bin/bash -e
wget -q https://github.com/re-ops/re-cipes/releases/download/0.2.8/re-cipes -P /tmp

if md5sum --status -c <(echo 901eb86ec617d580ff8c7d1e9eb24955 /tmp/re-cipes); then
 if [ ! -z "$RECIPE" ] ; then
   chmod +x /tmp/re-cipes
   sudo /tmp/re-cipes prov -p $RECIPE
 fi
else
  echo "failed to validate re-cipes download"
  exit 1
fi

