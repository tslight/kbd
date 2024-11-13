.DEFAULT_GOAL := all
all:
	sudo cp -v ./kbd.hwdb /etc/udev/hwdb.d/90-kbd.hwdb
	sudo systemd-hwdb update && sudo udevadm trigger
	udevadm info /dev/input/by-path/*-usb-*-kbd | grep KEYBOARD_KEY
	udevadm info /dev/input/eventX | grep KEYBOARD_KEY
