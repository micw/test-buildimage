#!/bin/bash

if [ $UID != 0 ]; then
  echo "I'm not root. running sudo $0"
  sudo $0
  exit $?
fi

echo "Now running as root..."

if [ ! -f /usr/bin/debootstrap ]; then
  echo "Installing debootstrap"
  apt-get update && apt-get -y install debootstrap
fi

