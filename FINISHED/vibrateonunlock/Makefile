ARCHS = arm64 armv7 armv7s

include theos/makefiles/common.mk

TWEAK_NAME = vibrateonunlock
vibrateonunlock_FILES = Tweak.xm
vibrateonunlock_FRAMEWORKS = AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
