#!/bin/bash

# A simple tool to copy files from PC to Android Devices
# It needs to connect the phone with either data cable or by "Wifi ADB" application through WiFi
# This script pushes your file from pc to the device via adb push
#
# Author: Tareq Hasan
# Web: http://tareq.weDevs.com
# Date: 19 September, 2011

COPY_FROM=$(zenity  --file-selection --title="Select your file") # prompts to select the file

if [ -r "$COPY_FROM" ] # if file exists
	then
		
		COPY_TO=$(zenity --entry --text="Give the destination path" --entry-text="/sdcard/") # asks for destination path
		DEVICE=$(adb devices | wc -l) # greater than 2 should return if any device is connected
		
		if [ "$DEVICE" -gt "2" ] # if any device is connected
			then
				STATUS_MSG=$(adb push "$COPY_FROM" "$COPY_TO") # copy the file
				zenity --info --text="The file should in your phone now :) \n $STATUS_MSG" # success message
			
			else
				zenity --info --text="No device seems to be connected" # a message
		fi
		
	else
		zenity --info --text="Sorry, the file doesn't exists." # failed
fi
