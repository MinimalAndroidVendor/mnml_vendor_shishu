# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH:=$(call my-dir)

#FileManager App

include $(CLEAR_VARS)
LOCAL_MODULE := MiXplorerPrebuilt
LOCAL_SRC_FILES := FileManager/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := CMFileManager Amaze AmazeFM crDroidFileManager
include $(BUILD_PREBUILT)

#Browser Apps

include $(CLEAR_VARS)
LOCAL_MODULE := FirefoxFocus
LOCAL_SRC_FILES := Browser/$(TARGET_ARCH)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Browser Browser2 Brave Jelly ViaBrowser Chromium Quark Quarks DuckDuckGo
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := DuckDuckGo
LOCAL_SRC_FILES := Browser/$(TARGET_ARCH)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Brave Browser Browser2 FirefoxFocus Jelly ViaBrowser Chromium Quark Quarks
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ViaBrowser
LOCAL_SRC_FILES := Browser/$(TARGET_ARCH)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Browser Browser2 Brave Jelly FirefoxFocus Chromium Quark Quarks DuckDuckGo
include $(BUILD_PREBUILT)

#Launcher Apps

include $(CLEAR_VARS)
LOCAL_MODULE := LawnchairStable
LOCAL_SRC_FILES := Launcher/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Launcher2 Launcher3 Trebuchet PixelLauncher VLauncher Luna Nova NovaLauncher TUILauncher NiagaraLauncher
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := TUILauncher
LOCAL_SRC_FILES := Launcher/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Launcher2 Launcher3 Trebuchet PixelLauncher VLauncher Luna Nova NovaLauncher NiagaraLauncher LawnchairStable
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := NiagaraLauncher
LOCAL_SRC_FILES := Launcher/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Launcher2 Launcher3 Trebuchet PixelLauncher VLauncher Luna Nova NovaLauncher TUILauncher LawnchairStable
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := NovaLauncher
LOCAL_SRC_FILES := Launcher/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Launcher2 Launcher3 Trebuchet PixelLauncher VLauncher Luna Nova TUILauncher NiagaraLauncher LawnchairStable
include $(BUILD_PREBUILT)

# AdAway
include $(CLEAR_VARS)
LOCAL_MODULE := AdAway
LOCAL_SRC_FILES := AdAway/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app
include $(BUILD_PREBUILT)

# OnePlusGallery
include $(CLEAR_VARS)
LOCAL_MODULE := OnePlusGallery
LOCAL_SRC_FILES := Gallery/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Gallery Gallery2 SnapdragonGallery VanillaGallery
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

