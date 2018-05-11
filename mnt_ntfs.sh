#!/bin/bash

if [ -z $1 ]; then
	echo "Usage: $(basename $0) [dev] [dir]"
	exit 1
else
/bin/ntfs-3g -o uid=1000,gid=1000,dmask=022,fmask=122,permissions,noatime,hide_hid_files $1 $2
	if [ $? != 0 ]; then
		echo "Failed";
	fi
fi
