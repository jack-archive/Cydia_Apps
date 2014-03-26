include theos/makefiles/common.mk

BUNDLE_NAME = hi
hi_FILES = hi.mm
hi_INSTALL_PATH = /Library/PreferenceBundles
hi_FRAMEWORKS = UIKit
hi_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/hi.plist$(ECHO_END)
