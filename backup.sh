#!/bin/bash

if [[ $# -ne 2 ]]; then
	echo "Usage: backup.sh <source directory> <target directory>"
	echo "Please try again."
	exit 1
fi

if ! command -v rsync > /dev/null 2>&1
then
    echo "rsync is not installed."
    echo "Use your suitable package manager to install it."
    exit 2
fi

current_date=$(date +%y-%m-%d)


rsync_options="-avb --backup-dir $2/$current_date --delete"

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log


