#!/bin/bash

# Make sure the USB is mounted before continuing
sleep 15

# Where the user has the backup saved
backupDir=$1

if test "$1" == "" ; then
  echo "USAGE: $0 <backup directory>"
	exit
else

	vol_name="$(mount | tail -1 | cut -d' ' -f3)"

	# Echo the name of the last volume mounted

	# List the contents of $vol_name
	# ls -l $vol_name

	flashName=${vol_name:9}

	# We can have different files for different flashdrives
	# So when we plug in the flashdrive named ATIVA, we'll sync all files from FlashTransfer/ATIVA to the flashdrive

	#HDDsrc="/Users/isabella/Documents/FlashTransfer/$flashName"
	HDDsrc=$backupDir

	# Check if we already have a backup
	# If we don't print error
	# If we do, sync it
	if [ ! -d $HDDsrc ]; then
	 	echo -e "\n\nNo backup for this flash drive found.\nExiting..."
	else
		echo -e "\n\nCopying all files and directories\n=================================\n$HDDsrc   --to-->   $vol_name/$flashName\n\n"
		# add -q for quiet mode
		rsync -av --delete --progress --exclude=".*" $HDDsrc $vol_name
	fi


	echo -e "\n\n=====BACKUP COMPLETE====="

	#beep when finished
	echo -en "\007"
fi

# diskutil unmount vol_name






