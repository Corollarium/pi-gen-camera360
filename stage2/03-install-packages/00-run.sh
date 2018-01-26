#!/bin/bash -e

install -m 774 -g pi -o pi $BINARY_PATH ${ROOTFS_DIR}/home/pi/camera360pi
install -m 774 files/camera360.service ${ROOTFS_DIR}/lib/systemd/system/

on_chroot << EOF
systemctl enable camera360
EOF