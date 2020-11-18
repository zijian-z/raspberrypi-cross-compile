## Set up cross compiler environment for Raspberry Pi

### Download official tools
[Download here](https://github.com/raspberrypi/tools). Only [this directory](https://github.com/raspberrypi/tools/blob/master/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/) is being used.

### Copy .so file
The official tools does not contain library files, such as the standard C library. We need to copy it from Raspberry Pi. Through `gcc --print-file-name=libc.so` check the location of the standard C library and copy it to the local computer.

### Specify header file location for GCC
`-I./lib/`. After that, you can compile file locally, and run on Raspberry Pi.