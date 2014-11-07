#!/bin/bash

if [ $UID != 0 ]; then
  echo "I'm not root. running sudo $0"
  sudo $0
  exit $?
fi
echo "Now running as root..."


echo "Check system"

which mount
mkdir xy
mount none xy -t proc && umount xy
echo "trying with bind mount"

mount /proc xy -o bind && umount xy

if [ ! -f /usr/bin/debootstrap ]; then
  echo "Installing debootstrap"
  apt-get -qq update && apt-get -qq -y install debootstrap
fi

mkdir target

# Debian Wheezy
# http://l3net.wordpress.com/2013/11/03/debian-virtualization-lxc-debootstrap-filesystem/

mkdir -p target/wheezy/rootfs
debootstrap --include=lxc --arch=amd64 wheezy target/wheezy/rootfs
