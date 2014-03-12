ARCHS = arm64 armv7 armv7s

include theos/makefiles/common.mk

APPLICATION_NAME = teststoryboard
teststoryboard_FILES = main.m teststoryboardApplication.mm RootViewController.mm
teststoryboard_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

before-package::
	@mkdir ./_/Applications/teststoryboard.app/Resources
	@cp ./Storyboard.storyboard ./_/Applications/teststoryboard.app/