TARGET := iphone:clang:14.4:13.0
INSTALL_TARGET_PROCESSES = SpringBoard
GO_EASY_ON_ME = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ZAndroidLS
ZAndroidLS_FILES = Tweak.xm
ZAndroidLS_CFLAGS = -fobjc-arc
ZAndroidLS_FRAMEWORKS = UIKit Foundation
ZAndroidLS_PRIVATE_FRAMEWORKS = MediaRemote
ZAndroidLS_LIBRARIES = sparkcolourpicker
ARCHS = arm64 arm64e

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += androidlsprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
