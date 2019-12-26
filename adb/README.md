# Mac系统adb无法识别不出华为部分手机
**1.查询连接的usb设备信息**
```
# system_profiler SPUSBDataType
FLA-AL20:

          Product ID: 0x107e
          Vendor ID: 0x12d1  (Huawei Technologies Co., Ltd.)
          Version: 2.99
          Serial Number: YAUNW18518000534
          Speed: Up to 480 Mb/sec
          Manufacturer: HUAWEI
          Location ID: 0x14100000 / 26
          Current Available (mA): 500
          Current Required (mA): 500
          Extra Operating Current (mA): 0
```
**2.将0x12d1写入到adb-usb.init文件中**
```
echo "0x12d1" > ~/.android/adb_usb.ini
```

**3.重启adb服务**
```
$ adb kill-server
$ adb start-server
```

**4.打开工程模式,电话按键拨打**
```
*#*#2846579#*#*
```
**5.找到->"ProjectMenu"->“后台设置”->“USB端口设置” 改成 "GOOGLE模式"。**


# Ubuntu配置识别不同厂商设备
**将51-android.rules文件下载到本地，执行命令**
```sh
# cp 51-android.rules /etc/udev/rules.d/
# chmod a+r /etc/udev/rules.d/51-android.rules
# service udev restart
```

# 如何开启小米电视开发模式（ADB无线调试）
**1.编写如下代码，用来打开android系统设置**
```java
Intent intentSet = new Intent(Settings.ACTION_SETTINGS);
startActivity(intentSet);
```

**2.通过小米电视相关资料，如何将上面代码编译成apk安装到小米电视上并运行？（网上介绍很多）**

**3.打开系统设置，连续点击系统版本号7次就可以开启开发模式**

**4.连接TV，请确保开发机与tv在同一局域网内，执行:adb connect [TV IP]:5555**

**5.查看adb设备，打开adb logcat**
```sh
# adb devices
# adb -s [TV IP]:5555 logcat
# adb -s [TV IP]:5555 logcat -s [xxtag]
```
注：在小米电视直接安装SettingLaucher.apk并运行

# ADB调试常用小技巧
**1.文本框输入**
```
adb shell input text “hello,world"
```

**2.debug版本导出应用数据（非root系统）**
```
adb shell
run-as 包名
dd if=mifit.db of=/mnt/sdcard/mifit.db
```

