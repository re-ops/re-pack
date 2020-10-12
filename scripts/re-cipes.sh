#!/bin/bash -e
wget -q https://github.com/re-ops/re-cipes/releases/download/0.2.3/re-cipes -P /tmp

if md5sum --status -c <(echo e510a3c34f63c56be8a6b14aef0d7bc8 /tmp/re-cipes); then
 if [ ! -z "$RECIPE" ] ; then
   chmod +x /tmp/re-cipes
   sudo /tmp/re-cipes prov -p $RECIPE
 fi
else
  echo "failed to validate re-cipes download"
  exit 1
fi

