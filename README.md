# Quick_Frida_Config
_An Android ADB Script for Configuring Certificates and Frida Server_ || _Also known as: FridaGorilla_

This script automates the process of configuring certificates and starting the Frida server on an Android device using ADB (Android Debug Bridge). It's designed to streamline the setup process for security testing and debugging purposes on emulators. 

## Prerequisites

- [ADB](https://developer.android.com/studio/command-line/adb) (Android Debug Bridge) installed on your computer.
- A rooted or unlocked Android device connected to your computer via ADB. (Tested on Gennymotion)
- Frida server on /data/local/tmp/ and BurpCA in /data/misc/user/0/certs-added (Default usr installed certs go there)

## Usage

1. Clone or download this repository to your local machine.
2. Make the script executable  ``chmod +x genyConfigBurp.sh``
3. Make sure you have both prerequisites installed and change the placeholder versions on script
4. Launch them while having a coffee and wonder how tedious that could have been to be done manually each time.
   
## Disclaimer
This script is provided as-is, without any warranties or guarantees. If you use it for evil you should feel bad :(

- The mnonada 🙈🙉🙈
