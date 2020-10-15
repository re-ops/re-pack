#!/bin/bash -e
wget -q https://github.com/re-ops/re-cipes/releases/download/0.2.5/re-cipes -P /tmp

if md5sum --status -c <(echo 77a13f9a73fe0dcd29166bf7af982628 /tmp/re-cipes); then
 if [ ! -z "$RECIPE" ] ; then
   chmod +x /tmp/re-cipes
   sudo /tmp/re-cipes prov -p $RECIPE
 fi
else
  echo "failed to validate re-cipes download"
  exit 1
fi

