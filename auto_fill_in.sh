#! /bin/bash
# Date: 2021-01-20 18:40:43
# Author: Hollis(his2nd.life)
# Description: This script fills in the DingTalk form of Heilongjiang autonomously via Android Debug Bridge. It is only for personal usage.
# Version: 1.0

ct=`date "+%Y-%m-%d %H:%M:%S"`
echo "This script is written by Hollis(his2nd.life), only for personal usage."
echo "Run at $ct."
echo "Trying starting the ADB server."
adb start-server
sleep 5
echo "Trying connecting to your device."
adb connect 192.168.0.101
sleep 5
echo "Trying unlocking your device."
adb shell input keyevent 26
sleep 5
adb shell input swipe 550 2000 550 1500
sleep 5
echo "Trying launching DingTalk."
adb shell am start -n com.alibaba.android.rimet/com.alibaba.android.rimet.biz.LaunchHomeActivity
sleep 5 
echo "Trying filling in the form."
# Click Work.
adb shell input tap 550 2300
sleep 5
# Click Form.
adb shell input tap 125 1410
sleep 5
# Click Fill In.
adb shell input tap 550 2300
sleep 5
# Click Fill In.
adb shell input tap 550 760
sleep 5
# Click Today.
adb shell input tap 140 1515
sleep 5
# Swipe down.
adb shell input swipe 550 2000 550 1500 50
sleep 5
# Click Acquire.
adb shell input tap 1000 360
sleep 5
# Swipe down.
adb shell input swipe 550 2000 550 1500
sleep 5
# Click Submit.
adb shell input tap  550 2240
sleep 5
echo "Trying killing the ADB server."
adb kill-server
echo "Done."
