# enable camera
[ -e /boot/config.txt ] || touch /boot/config.txt
set_config_var start_x 1 /boot/config.txt
CUR_GPU_MEM=$(get_config_var gpu_mem /boot/config.txt)
if [ -z "$CUR_GPU_MEM" ] || [ "$CUR_GPU_MEM" -lt 128 ]; then
	set_config_var gpu_mem 128 /boot/config.txt
fi
sed /boot/config.txt -i -e "s/^startx/#startx/"
sed /boot/config.txt -i -e "s/^fixup_file/#fixup_file/"

#enable SSH
touch /boot/ssh

# TODO pi passwd (and don't commit that to github!)

cp $BASE_DIR/state2/files/camera360pi /home/pi/camera360pi
chmod 774 /home/pi/camera360pi
chown pi.pi /home/pi/camera360pi