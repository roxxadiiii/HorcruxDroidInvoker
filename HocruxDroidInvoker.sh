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
