ARCHS = arm64 armv7 armv7s

include theos/makefiles/common.mk

TWEAK_NAME = vibrate_unlock
vibrate_unlock_FILES = Tweak.xm
vibrate_unlock_FRAMEWORKS = AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
