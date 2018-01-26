# enable camera
[ -e /boot/config.txt ] || touch /boot/config.txt

echo "start_x=1" >> /boot/config.txt
echo "gpu_mem=128" >> /boot/config.txt

#enable SSH
touch /boot/ssh

# TODO pi passwd (and don't commit that to github!)