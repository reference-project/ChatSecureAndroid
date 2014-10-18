#!/bin/sh

target="android-19"
projectname=`sed -n 's,.*name="app_name">\(.*\)<.*,\1,p' res/values/strings.xml`

# make sure your Android SDK tools path is set in SDK_BASE
android update lib-project --path external/MemorizingTrustManager
android update lib-project --path external/AndroidPinning
android update lib-project --path external/cacheword/cachewordlib
android update lib-project --path external/SlidingMenu/library
android update lib-project --path external/AndroidEmojiInput/library
android update lib-project --path external/ViewPagerIndicator/library
android update lib-project --path external/appcompat
android update lib-project --path external/bho/TibetanTextLibrary

android update project --path . --name $projectname --target $target --subprojects

cp libs/android-support-v4.jar external/SlidingMenu/library/libs/android-support-v4.jar
cp libs/android-support-v4.jar external/cacheword/cachewordlib/libs/android-support-v4.jar
cp libs/android-support-v4.jar external/ViewPagerIndicator/library/libs/android-support-v4.jar
cp libs/android-support-v4.jar external/AndroidEmojiInput/library/libs/android-support-v4.jar

##rm external/cacheword/cachewordlib/custom_rules.xml
