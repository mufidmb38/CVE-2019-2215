# Requires the $ANDROID_NDK_HOME environment variable to be set
# containing the base path to Android NDK r19 or higher.

PREFIX 		= $(ANDROID_NDK_HOME)/toolchains/llvm/prebuilt/linux-x86_64/bin/
ANDROID_API	?= 21
TARGET 		= aarch64-linux-android

CC			= $(PREFIX)$(TARGET)$(ANDROID_API)-clang

build:
	$(CC) su98.c -o su98
	$(CC) su98-memory-kallsyms.c -o su98-memory-kallsyms

clean:
	rm -f su98
	rm -f su98-memory-kallsyms

all:
	clean build