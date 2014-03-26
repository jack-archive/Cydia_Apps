ARCHS = arm64 armv7 armv7s

include theos/makefiles/common.mk

TWEAK_NAME = respringonpoweroff
respringonpoweroff_FILES = Tweak.xm
respringonpoweroff_FRAMEWORKS = AudioToolbox UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
