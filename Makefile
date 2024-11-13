.DEFAULT_GOAL := all
all:
	sudo cp -v ./kbd.hwdb /etc/udev/hwdb.d/90-kbd.hwdb
	sudo systemd-hwdb update && sudo udevadm trigger
