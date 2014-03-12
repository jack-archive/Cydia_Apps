#import <sys/utsname.h>

int main(int argc, char **argv, char **envp) {
    struct utsname systemInfo;
	uname(&systemInfo);
	printf([[NSString stringWithCString:systemInfo.machineencoding:NSUTF8StringEncoding] UTF8String]);
	return 0;
}

// vim:ft=objc
