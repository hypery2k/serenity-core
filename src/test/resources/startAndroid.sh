#!/usr/bin/env bash

source ~/.android-sdk-installer/env
# Create and start emulator
echo no | android create avd --force -n android-23 -t android-23 --abi armeabi-v7a
emulator -avd android-23 &
adb wait-for-device
adb shell input keyevent 82 &