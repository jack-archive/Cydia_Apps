ARCHS = arm64 armv7 armv7s

include theos/makefiles/common.mk

TWEAK_NAME = UIAlertWorkspace
UIAlertWorkspace_FILES = Tweak.xm
UIAlertWorkspace_FRAMEWORKS = UIKit AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
