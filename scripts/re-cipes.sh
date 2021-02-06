#!/bin/bash -e
wget -q https://github.com/re-ops/re-cipes/releases/download/0.3.5/re-cipes -P /tmp

if md5sum --status -c <(echo ff045c3995242a5d4d6d443193efc555 /tmp/re-cipes); then
 if [ ! -z "$RECIPE" ] ; then
   chmod +x /tmp/re-cipes
   sudo /tmp/re-cipes prov -p $RECIPE
 fi
else
  echo "failed to validate re-cipes download"
  exit 1
fi

