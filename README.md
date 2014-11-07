test-buildimage
===============

Just a test if it's possible to build vagrant-lxc base images on variour build services

Testet build services:

drone.io:
- does support local artifact archiving (nice because no extra webspace required)
- does support sudo
- does support apt-get instalaltions
- does not support mount (required for debootstrap)

travis.ci:
- does support sudo
- does support apt-get instalaltions
- does support mount (required for debootstrap)
