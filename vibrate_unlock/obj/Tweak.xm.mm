#line 1 "Tweak.xm"



































#import <AudioToolbox/AudioServices.h>

#include <logos/logos.h>
#include <substrate.h>
@class SBLockScreenViewController; 
static void (*_logos_orig$_ungrouped$SBLockScreenViewController$finishUIUnlockFromSource)(SBLockScreenViewController*, SEL); static void _logos_method$_ungrouped$SBLockScreenViewController$finishUIUnlockFromSource(SBLockScreenViewController*, SEL); 

#line 38 "Tweak.xm"


static void _logos_method$_ungrouped$SBLockScreenViewController$finishUIUnlockFromSource(SBLockScreenViewController* self, SEL _cmd):(int a) {
	_logos_orig$_ungrouped$SBLockScreenViewController$finishUIUnlockFromSource(self, _cmd);
	AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
	AudioServicesPlayAlertSound(kSystemSoundID_Vibrate); 
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockScreenViewController = objc_getClass("SBLockScreenViewController"); MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenViewController, @selector(finishUIUnlockFromSource), (IMP)&_logos_method$_ungrouped$SBLockScreenViewController$finishUIUnlockFromSource, (IMP*)&_logos_orig$_ungrouped$SBLockScreenViewController$finishUIUnlockFromSource);} }
#line 47 "Tweak.xm"
