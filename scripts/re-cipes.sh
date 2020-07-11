#!/bin/bash -e
wget -q https://github.com/re-ops/re-cipes/releases/download/0.1.26/re-cipes -P /tmp

if md5sum --status -c <(echo f35866a8ead5d8bbdadd168ce635e60e /tmp/re-cipes); then
 if [ ! -z "$RECIPE" ] ; then
   chmod +x /tmp/re-cipes
   sudo /tmp/re-cipes prov -p $RECIPE
 fi
else
  echo "failed to validate re-cipes download"
  exit 1
fi

