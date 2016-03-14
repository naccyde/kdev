#!/bin/sh

mount -t proc none /proc
mount -t sysfs none /sys

echo -e "Boot finish ($(cut -d' ' -f1 /proc/uptime)s)\n"

insmod dogestack.ko
export PS1=""

exec /bin/sh