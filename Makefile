.DEFAULT_GOAL := all
all:
	sudo cp -v ./sc-kbd.hwdb /etc/udev/hwdb.d/90-sc-kbd.hwdb
	sudo systemd-hwdb update && sudo udevadm trigger
	udevadm info /dev/input/event* | grep -E 'caps|esc|meta|alt|ctrl'
