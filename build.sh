#!/bin/bash

if [ $UID != 0 ]; then
  echo "I'm not root. running sudo $0"
  sudo $0
  exit $?
fi

echo "Now running as root..."

if [ ! -f /usr/bin/debootstrap ]; then
  echo "Installing debootstrap"
  apt-get -qq update && apt-get -qq -y install debootstrap
fi

