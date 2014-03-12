include theos/makefiles/common.mk

TOOL_NAME = respring
respring_FILES = main.c

include $(THEOS_MAKE_PATH)/tool.mk

after-install::
	install.exec "killall -9 SpringBoard"
