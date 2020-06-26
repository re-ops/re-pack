#!/bin/bash -e
wget https://github.com/re-ops/re-cipes/releases/download/0.1.22/re-cipes -P /tmp

if md5sum --status -c <(echo 2684b2abad4e00bfdad138ae3362de91 /tmp/re-cipes); then
 if [ ! -z "$RECIPE" ] ; then
   chmod +x /tmp/re-cipes
   sudo /tmp/re-cipes prov -p $RECIPE
 fi
else
  echo "failed to validate re-cipes download"
  exit 1
fi

