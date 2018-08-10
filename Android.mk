LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_STATIC_ANDROID_LIBRARIES := \
    $(ANDROID_SUPPORT_DESIGN_TARGETS) \
    android-support-v4 \
    android-support-v7-appcompat \
    android-support-v7-recyclerview

LOCAL_RESOURCE_DIR = \
        $(LOCAL_PATH)/res

LOCAL_USE_AAPT2 := true

LOCAL_AAPT_FLAGS := \
        --auto-add-overlay

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_MIN_SDK_VERSION := 24
LOCAL_PACKAGE_NAME := MusicFX
LOCAL_CERTIFICATE := platform
LOCAL_PRIVATE_PLATFORM_APIS := true

include $(BUILD_PACKAGE)
