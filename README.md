# GSI项目的垫脚石

# 0x00 项目介绍

本项目统合了科大讯飞学习机展讯机型（基于ud710芯片和Android9底层系统）chip1和chip2芯片的LineageOS设备树（使用[dumpyara](https://github.com/AndroidDumps/dumpyara)和[aospdtgen](https://github.com/sebaubuntu-python/aospdtgen)生成），但Chip0因为GSI适配性较强（除x3pro以外几乎都可以开a11-13的GSI，bvN）而用不着。

除设备树以外，本项目还将详细列出各展讯科大机型（包括ums9620机型，ums312机型和ud710机型）的详情信息（打算在本项目Wiki板块搞，但估计得2-3周以后吧）

另外，欢迎各位大佬开Issue，提PR！

# 0x01 使用方法

Chip1机型：

```shell
git clone https://github.com/KawaiiSparkle/lineage_iflytek_ud710 -b chip1
```

Chip2机型：

```shell
git clone https://github.com/KawaiiSparkle/lineage_iflytek_ud710 -b chip2
```
