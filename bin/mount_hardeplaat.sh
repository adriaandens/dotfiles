#!/bin/bash

# Disk /dev/sdb: 1.82 TiB, 2000398934016 bytes, 3907029168 sectors
# Disk model: WDC WD20EZAZ-00L
DISK=`fdisk -l | grep -B1 'WD20EZAZ-00L' | head -n1 | cut -d ' ' -f 2 | cut -d ':' -f 1`
if ! [ $DISK ]; then
	echo "Did not find hardeplaat"
	exit 1
fi

echo "hardeplaat is at $DISK"
data_folder=`ls -l /data`
if ! [ $? ]; then
	echo "/data already exists."
else
	echo "/data does not exist yet, so creating it"
	mkdir /data
fi
cryptsetup luksOpen $DISK hardeplaat
mount /dev/mapper/hardeplaat /data

