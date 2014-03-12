#import <unistd.h>
#import <stdio.h>

int main(int argc, char **argv, char **envp) {
	setuid(0);
    printf("UID: %d", getuid());
    system("reboot");
    return 0;
}

// vim:ft=objc
