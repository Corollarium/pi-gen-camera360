#!/bin/bash -e

#install -m 774 -g pi -o pi $BINARY_PATH ${ROOTFS_DIR}/home/pi/camera360pi
install -m 774 /home/build/deps/raspberry/camera360client.deb ${ROOTFS_DIR}/tmp/camera360client.deb
install -m 664 files/camera360.service ${ROOTFS_DIR}/lib/systemd/system/

on_chroot << EOF
dpkg -i /tmp/camera360client.deb
systemctl enable camera360
EOF
