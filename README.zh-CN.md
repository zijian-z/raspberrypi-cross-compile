## 为树莓派搭建交叉编译环境

### 下载官方tools文件
[此处下载](https://github.com/raspberrypi/tools)，暂时只用到了[这个目录](https://github.com/raspberrypi/tools/blob/master/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/)下的文件。

### 复制 .so 文件
官方 tools 文件并不包含库文件，比如 C 标准库。需要我们从树莓派上复制过来。通过 `gcc --print-file-name=libc.so` 查看 C 标准库的位置，然后复制到本机上。

### 为 GCC 指定头文件位置
`-I./lib/`，即可在本机上编译，然后复制到树莓派上运行。