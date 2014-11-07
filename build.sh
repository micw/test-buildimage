#!/bin/bash

if [ $UID != 0 ]; then
  echo "Exec $0 as root"
  sudo $0
  exit $?
fi

echo "Now running as root..."

