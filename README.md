What is this?
=============

It's a simple bash script that helps you to transfer files from your desktop to android phone

Umm...how does it work?
-----------------------

If you ever used Android SDK, you may have noticed that it has some tools. One of them is `adb` and it's very powerful.
You can connect your phone to the desktop and use this command `adb push /path/to/local/file /path/to/destination` to transfer your file to the phone.

This script helps you to not write the whole path in command line, but shows you a GUI dialog to select the file and it'll transfer the file to your selected location.

How to use?
-------

* Connect the phone to your desktop via a cable.
* Download the `copy2android.sh` file and place it anywhere (home directory will be good)
* Make it executable by this command - `chmod +x fla.sh`
* Now double click the file and select "Run"
* It'll open a file selector box to select the file you want to copy to your device/phone
* After selecting the file, it'll prompt you to give the destination path. Default is `/sdcard/`
* Pressing ok will transfer the file to your phone.

Can I use this without any cable?
----------------------------------
Yes, you can use this via wifi network. There is a nice application in android market This is ["Wifi Adb"](https://market.android.com/details?id=com.ttxapps.wifiadb "Wifi Adb"). You must have the phone "rooted".


Contribution
------------
I am not a pro in bash scripting. You may contribute by improving it in some(!) ways
