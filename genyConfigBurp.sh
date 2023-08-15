#!/bin/bash

# Print reminder to configure Burp Suite proxy
echo "[*] Please make sure to configure the Burp Suite proxy settings to intercept traffic."
echo "[*] Once the proxy is configured, press any key to continue..."
read -n 1 -s

# Execute commands in the ADB shell
adb -s 127.0.0.1:5555 shell <<EOF
echo "Changing directory to data/misc/user/0/cacerts-added/"
cd data/misc/user/0/cacerts-added/
echo "Remounting system partition as read-write"
mount -o rw,remount /
echo "Copying <<CA_CERT_PLACEHOLDER>> to /system/etc/security/cacerts"
cp 9a5ba575.0 /system/etc/security/cacerts

echo "Changing directory to /data/local/tmp/"
cd /data/local/tmp/
echo "Executing ./frida-server-16.0.11-android-x86_64"
./frida-server-16.0.11-android-x86_64 &

echo "Commands executed successfully."
exit
EOF

# Print reminder to configure the mobile phone proxy
echo "[*] Please configure the proxy settings on your mobile phone to point to the Burp Suite proxy."
echo "[*] Once the proxy is configured, you can start capturing the traffic."
