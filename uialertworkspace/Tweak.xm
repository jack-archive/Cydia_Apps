/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor.

%hook ClassName

// Hooking a class method
+ (id)sharedInstance {
	return %orig;
}

// Hooking an instance method with an argument.
- (void)messageName:(int)argument {
	%log; // Write a message about this call, including its class, name and arguments, to the system log.

	%orig; // Call through to the original function with its original arguments.
	%orig(nil); // Call through to the original function with a custom argument.

	// If you use %orig(), you MUST supply all arguments (except for self and _cmd, the automatically generated ones.)
}

// Hooking an instance method with no arguments.
- (id)noArguments {
	%log;
	id awesome = %orig;
	[awesome doSomethingElse];

	return awesome;
}

// Always make sure you clean up after yourself; Not doing so could have grave consequences!
%end
*/

#import <SpringBoard/SpringBoard.h>
#import <AudioToolbox/AudioServices.h>

%hook SBPowerDownController

-(void)powerDown {
	%log;
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
	UIAlertView *alert = [[UIAlertView alloc]
		initWithTitle:@"Powering Down..."
		message:@"Choose Your Destiny"
		delegate: self
         cancelButtonTitle:@"Respring"
		otherButtonTitles:@"Safe Mode",nil];
	
	[alert show];
	[alert release];
}

%new

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if(buttonIndex ==1){
		NSLog(@"user pressed Safe Mode");
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
		system("killall -SEGV SpringBoard");
	}
    else {
        NSLog(@"user pressed Respring");
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        system("killall -9 SpringBoard");
    }
}

%end
