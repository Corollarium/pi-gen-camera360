# enable camera
[ -e /boot/config.txt ] || touch /boot/config.txt

echo "start_x=1" >> /boot/config.txt
echo "gpu_mem=128" >> /boot/config.txt

#enable SSH
# touch /boot/ssh

systemctl stop triggerhappy
systemctl disable triggerhappy

# TODO set on CONFIG file
usermod --password ChmKdHEfMaOBM pi

# install and enable tmpreaper
# special case because it prompts a "Ok" confirmation screen.
DEBIAN_FRONTEND=noninteractive apt-get install -y tmpreaper
sed -i 's/SHOWWARNING=true//g' /etc/tmpreaper.conf