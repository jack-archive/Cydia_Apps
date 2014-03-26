#import <Preferences/Preferences.h>

@interface hiListController: PSListController {
}
@end

@implementation hiListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"hi" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
