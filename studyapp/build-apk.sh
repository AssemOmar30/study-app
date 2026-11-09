#!/bin/bash
set -e
npm install
[ -d android ] || npx cap add android
M=android/app/src/main/AndroidManifest.xml
grep -q POST_NOTIFICATIONS $M || sed -i 's#<application#<uses-permission android:name="android.permission.POST_NOTIFICATIONS"/><uses-permission android:name="android.permission.SCHEDULE_EXACT_ALARM"/><uses-permission android:name="android.permission.VIBRATE"/><uses-permission android:name="android.permission.WAKE_LOCK"/><application#' $M
npx cap sync android
cd android && chmod +x gradlew && ./gradlew assembleDebug
echo "APK: android/app/build/outputs/apk/debug/app-debug.apk"
