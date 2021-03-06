#!/bin/bash

# Linuxium's scripts to create a custom Ubuntu ISO

[ $# != 1 ] && echo "Usage: $0 <chroot environment>" && exit

CHROOT_ENVIRONMENT="$1"
[ ! -d ${CHROOT_ENVIRONMENT} ] && echo "Chroot environment '${CHROOT_ENVIRONMENT}' not found ... exiting." && exit

# enter chroot
sudo mount --bind /dev/ ${CHROOT_ENVIRONMENT}/dev
sudo chroot ${CHROOT_ENVIRONMENT}

