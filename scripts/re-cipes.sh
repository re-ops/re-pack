#!/bin/bash -e
wget -q https://github.com/re-ops/re-cipes/releases/download/0.3.14/re-cipes -P /tmp

if md5sum --status -c <(echo 2e73ff773fea87014184169629bfcd44 /tmp/re-cipes); then
 if [ ! -z "$RECIPE" ] ; then
   chmod +x /tmp/re-cipes
   sudo /tmp/re-cipes prov -p $RECIPE
 fi
else
  echo "failed to validate re-cipes download"
  exit 1
fi

