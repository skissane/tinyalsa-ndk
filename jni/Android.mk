LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES:= $(LOCAL_PATH)/include/
LOCAL_SRC_FILES:= ../mixer_hw.c ../mixer.c ../mixer_plugin.c ../pcm.c ../pcm_hw.c ../pcm_plugin.c ../snd_utils.c
LOCAL_MODULE := libtinyalsa
LOCAL_SHARED_LIBRARIES:=
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false

APP_PLATFORM := android-16
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES:= $(LOCAL_PATH)/include
LOCAL_SRC_FILES:= ../tinyplay.c ../pcm_hw.c ../pcm_plugin.c ../snd_utils.c ../mixer.c ../mixer_hw.c ../mixer_plugin.c ../pcm.c
LOCAL_MODULE := tinyplay
LOCAL_SHARED_LIBRARIES:=
LOCAL_MODULE_TAGS := optional

APP_PLATFORM := android-16
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES:= $(LOCAL_PATH)/include/
LOCAL_SRC_FILES:= ../tinycap.c ../pcm.c ../pcm_hw.c ../pcm_plugin.c ../snd_utils.c
LOCAL_MODULE := tinycap
LOCAL_SHARED_LIBRARIES:=
LOCAL_MODULE_TAGS := optional

APP_PLATFORM := android-16
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES:= $(LOCAL_PATH)/include/
LOCAL_SRC_FILES:= ../tinymix.c  ../pcm_hw.c ../pcm_plugin.c ../snd_utils.c ../mixer.c ../mixer_hw.c ../mixer_plugin.c
LOCAL_MODULE := tinymix
LOCAL_SHARED_LIBRARIES:=
LOCAL_MODULE_TAGS := optional

APP_PLATFORM := android-16
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES:= $(LOCAL_PATH)/include/
LOCAL_SRC_FILES:= ../tinypcminfo.c ../pcm_hw.c ../pcm_plugin.c ../snd_utils.c ../mixer.c ../mixer_hw.c ../mixer_plugin.c ../pcm.c
LOCAL_MODULE := tinypcminfo
LOCAL_SHARED_LIBRARIES:=
LOCAL_MODULE_TAGS := optional

APP_PLATFORM := android-16
include $(BUILD_EXECUTABLE)
