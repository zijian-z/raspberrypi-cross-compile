PREFIX = ~/tools-master/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin
GCC = $(PREFIX)/arm-linux-gnueabihf-gcc
FLAGS = -I./lib/

all:
	$(GCC) hello.c -o build/hello.o $(FLAGS)
	scp build/hello.o pi@192.168.1.250:~/Run/

clean:
	rm -rf *.o