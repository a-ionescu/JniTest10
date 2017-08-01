LOCAL_PATH:= $(call my-dir)


include $(CLEAR_VARS)
LOCAL_MODULE := libcutils
LOCAL_SRC_FILES := libcutils.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)


LOCAL_C_INCLUDES += $(LOCAL_PATH)

LOCAL_SRC_FILES:= \
	gps_test.cpp
LOCAL_SRC_FILES += hardware.c

LOCAL_SHARED_LIBRARIES := \
	libcutils

LOCAL_MODULE:= test-gps

LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)