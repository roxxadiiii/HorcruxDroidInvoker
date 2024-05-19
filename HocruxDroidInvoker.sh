#!/bin/bash
#

tput setaf 5

cat <<"EOF"

░▒█░▒█░▄▀▀▄░█▀▄░█▀▀▄░█░▒█░█░█░▒█▀▀▄░█▀▀▄░▄▀▀▄░░▀░░█▀▄░▀█▀░█▀▀▄░▄░░░▄░▄▀▀▄░█░▄░█▀▀░█▀▀▄░░░░█▀▀░█░░░
░▒█▀▀█░█░░█░█░░░█▄▄▀░█░▒█░▄▀▄░▒█░▒█░█▄▄▀░█░░█░░█▀░█░█░▒█░░█░▒█░░█▄█░░█░░█░█▀▄░█▀▀░█▄▄▀░▄▄░▀▀▄░█▀▀█
░▒█░▒█░░▀▀░░▀▀▀░▀░▀▀░░▀▀▀░▀░▀░▒█▄▄█░▀░▀▀░░▀▀░░▀▀▀░▀▀░░▄█▄░▀░░▀░░░▀░░░░▀▀░░▀░▀░▀▀▀░▀░▀▀░▀▀░▀▀▀░▀░░▀

EOF

#WARNING

cat <<"EOF"


# HorcruxDroidInvoker
# Warning: Use with caution!
# This script performs the following actions:
# 1. Checks if adb (Android Debug Bridge) is installed.
# 2. Checks if aria2 (a download utility) is installed.
# 3. Downloads specified applications.
# 4. Installs applications on connected Android devices via adb.

# Please read the following warnings before proceeding:

# 1. Ensure adb and aria2 are correctly installed on your system.
# 2. Connecting your device: Ensure your Android device is properly connected
#    via USB and USB debugging is enabled.
# 3. Data safety: This script installs applications on your device, which may 
#    affect system performance or overwrite existing data. Proceed with caution.
# 4. Permissions: Running this script requires appropriate permissions. Use 
#    sudo if necessary.
# 5. Connectivity: A stable internet connection is required for downloading 
#    applications.
# 6. Reliability: This script relies on external sources for downloading 
#    applications. Ensure the sources are trustworthy.
# 7. Device compatibility: This script is designed for Android devices. Ensure 
#    your device is compatible and backed up before running the script.
# 8. Liability: Use this script at your own risk. The author is not responsible 
#    for any damage or data loss incurred by using this script.

EOF

#sleep for 5 seconds
#
sleep 5

echo "Do you want to continue....[y/n]"
read answer

if [ "$answer" != "${answer#[Nn]}" ]; then
	echo "✩░▒▓▆▅▃▂▁ 𝐄 𝐗 𝐈 𝐓 𝐈 𝐍 𝐆   𝐒 𝐂 𝐑 𝐈 𝐏 𝐓 ▁▂▃▅▆▓▒░✩"
	exit 1
fi

#remaining code
#

#clearing screen
clear
cat <<"EOF"

░▒█░▒█░▄▀▀▄░█▀▄░█▀▀▄░█░▒█░█░█░▒█▀▀▄░█▀▀▄░▄▀▀▄░░▀░░█▀▄░▀█▀░█▀▀▄░▄░░░▄░▄▀▀▄░█░▄░█▀▀░█▀▀▄░░░░█▀▀░█░░░
░▒█▀▀█░█░░█░█░░░█▄▄▀░█░▒█░▄▀▄░▒█░▒█░█▄▄▀░█░░█░░█▀░█░█░▒█░░█░▒█░░█▄█░░█░░█░█▀▄░█▀▀░█▄▄▀░▄▄░▀▀▄░█▀▀█
░▒█░▒█░░▀▀░░▀▀▀░▀░▀▀░░▀▀▀░▀░▀░▒█▄▄█░▀░▀▀░░▀▀░░▀▀▀░▀▀░░▄█▄░▀░░▀░░░▀░░░░▀▀░░▀░▀░▀▀▀░▀░▀▀░▀▀░▀▀▀░▀░░▀

EOF

echo
echo

cat <<"EOF"

▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
█ ▄▄▀██ ▀██ ██ ▄▄▀██ ▄▄▀██ ▄▄▄ █▄ ▄██ ▄▄▀████▄▄ ▄▄██ ▄▄▄ ██ ▄▄▄ ██ █████ ▄▄▄ 
█ ▀▀ ██ █ █ ██ ██ ██ ▀▀▄██ ███ ██ ███ ██ █▄▄███ ████ ███ ██ ███ ██ █████▄▄▄▀▀
█ ██ ██ ██▄ ██ ▀▀ ██ ██ ██ ▀▀▀ █▀ ▀██ ▀▀ ██████ ████ ▀▀▀ ██ ▀▀▀ ██ ▀▀ ██ ▀▀▀ 
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

EOF

# Check if android-tools is installed
if ! pacman -Qs android-tools >/dev/null; then
	echo "android-tools is not installed. Installing..."
	sudo pacman -S --noconfirm android-tools
	if [ $? -ne 0 ]; then
		echo "Failed to install android-tools. Exiting script."
		exit 1
	fi
else
	echo "android-tools is already installed."
fi

cat <<"EOF"

▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
█ ▄▄▀██ ▄▄▀█▄ ▄█ ▄▄▀█ ▄ ██ ▄▄▀
█ ▀▀ ██ ▀▀▄██ ██ ▀▀ ██▀▄██ ███
█ ██ ██ ██ █▀ ▀█ ██ █ ▀▀██ ▀▀▄
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

EOF

# Check if aria2 is installed
if ! pacman -Qs aria2 >/dev/null; then
	echo "aria2 is not installed. Installing..."
	sudo pacman -S --noconfirm aria2
	if [ $? -ne 0 ]; then
		echo "Failed to install aria2. Exiting script."
		exit 1
	fi
else
	echo "aria2 is already installed."
fi

cat <<"EOF"

▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
█▀ ███ ▄▄▀██ ▄▀▄ ██ ▄▄ 
██ ███ ██ ██ █ █ ██ ▀▀ 
█▀ ▀██ ▀▀ ██ ███ ██ ███
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

EOF

echo "DOWNLOADING 1DMP"
aria2c -o 1dmp.apk https://reaper-club-9a3fae922e27.herokuapp.com/23858/1DM_v16-Mod.apk?hash=AgADlQ
echo
echo
echo "INSTALLING 1DMP"
adb insatll 1dmp.apk

cat <<"EOF"

▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
██░▄▄▄░█▀▄▄▀█▀▄▄▀█▄░▄██▄██░▄▄█░██░
██▄▄▄▀▀█░▀▀░█░██░██░███░▄█░▄██░▀▀░
██░▀▀▀░█░█████▄▄███▄██▄▄▄█▄███▀▀▀▄
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

EOF

echo "DOWNLOADING SPOTIFY"
aria2c -o spotify.apk https://reaper-club-9a3fae922e27.herokuapp.com/23872/Spotify+v8.9.18.512+%5BAB+Sherlock%5D+%28Merged%29.apk?hash=AgADRx
echo
echo
echo "INSTALLING SPOTIFY"
adb install spotify.apk

cat <<"EOF"

▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
█░██░█░▄▀▄░█░██░█░▄▄██▄██▀▄▀
█░▀▀░█░█▄█░█░██░█▄▄▀██░▄█░█▀
█▀▀▀▄█▄███▄██▄▄▄█▄▄▄█▄▄▄██▄█
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

EOF

echo "DOWNLOADING YMUSIC"
aria2c -o ymusic.apk https://reaper-club-9a3fae922e27.herokuapp.com/23874/4374_ymusic_arm64.apk?hash=AgADSB
echo
echo
echo "INSTALLING YMUSIC"
adb install ymusic.apk
