include theos/makefiles/common.mk

APPLICATION_NAME = rebooticon
rebooticon_FILES = main.m rebooticonApplication.mm RootViewController.mm
rebooticon_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

before-package::
	@mkdir ./_/Applications/rebooticon/
	@cp ./main ./_/Applications/rebooticon/main
	
