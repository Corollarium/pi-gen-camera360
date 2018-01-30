# enable camera
[ -e /boot/config.txt ] || touch /boot/config.txt

echo "start_x=1" >> /boot/config.txt
echo "gpu_mem=128" >> /boot/config.txt

#enable SSH
touch /boot/ssh

systemctl stop triggerhappy
systemctl disable triggerhappy

# TODO set on CONFIG file
usermod --password ChmKdHEfMaOBM pi