# 如何开启小米电视开发模式（ADB调试）
**1.编写如下代码，用来打开android系统设置**
```java
Intent intentSet = new Intent(Settings.ACTION_SETTINGS);
startActivity(intentSet);
```

**2.通过小米电视相关资料，如何将上面代码编译成apk安装到小米电视上并运行？（网上介绍很多）**

**3.打开系统设置，连续点击系统版本号7次就可以开启开发模式**

**4.开发机与tv在同一局域网内，adb connect [TV IP]:5555，过滤logcat tag**

**5.查看adb设备，打开adb logcat**
```sh
# adb devices
# adb -s [TV IP]:5555 logcat
# adb -s [TV IP]:5555 logcat -s [xxtag]
```
注：在小米电视直接按照SettingLaucher.apk并运行

