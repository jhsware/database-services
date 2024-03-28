#!/bin/bash

##
if [ -z "$1" ] || [ $1 = "--help" ] || [ $1 = "-h" ]; then
  echo
  echo "Usage: scripts/tigerbeetle/provision.sh provision"
  echo
  echo "Provision a TigerBeetle instance."
  echo 
  exit 0
fi


case $1 in
  provision)
  # We should have a better solution to provisioning, but this will do:
  echo "tigerbeetle format --cluster=0 --replica=0 --replica-count=1 ./tigerbeetle/0_0.tigerbeetle"
  docker run -v $(pwd)/var/tigerbeetle:/data ghcr.io/tigerbeetle/tigerbeetle format --cluster=0 --replica=0 --replica-count=1 /data/0_0.tigerbeetle
  ;;
  *)
  echo "Unknown options: $@"
  ;;
esac