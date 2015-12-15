android逆向工程操作方法
=====

软件工具集合
apktool1.5.2.tar.bz2
dex2jar-0.0.9.15.zip
jad158e.linux.intel.zip
libstdc++2.10-glibc2.2_2.95.4-27_i386.deb
AXMLPrinter2.jar

介绍各个工具有什么作用

一、解压apktool1.5.2.tar.bz2
apktool1.5.2.tar.bz2 是“反编译apk资源”工具，即反编译apk的manifest和res目录。通过以下命令将文件解压到当前目录：
$ tar -xvf apktool1.5.2.tar.bz2
解压后得到文件 “apktool1.5.2/apktool.jar”。
补充：这里使用的是1.5.2版本的apktool工具。若要下载最新版本的apktool工具，点击链接：http://code.google.com/p/android-apktool/

二、解压dex2jar-0.0.9.15.zip
dex2jar-0.0.9.15.zip 是“将dex转换为jar”工具。 通过以下命令将文件解压到当前目录：
$ unzip dex2jar-0.0.9.15.zip
解压后得到目录 “dex2jar-0.0.9.15”。
补充：这里使用的是0.0.9.15版本的dex2jar工具。若要下载最新版本的dex2jar工具，点击链接： http://code.google.com/p/dex2jar/

三、解压jad158e.linux.intel.zip
jad158e.linux.intel.zip 是“将jar还原成java源文件”的工具。通过以下命令将文件解压到当前目录：
$ unzip jad158e.linux.intel.zip
解压后，得到文件 “jad”。
补充：这里使用的是jad158e版本工具。若要下载最新版本的jad工具，点击链接： http://www.varaneckas.com/jad

四、安装 libstdc++2.10-glibc2.2_2.95.4-27_i386.deb
到 http://archive.debian.net/etch/i386/libstdc++2.10-glibc2.2/download 中下载一个文件，然后通过以下命令安装deb文件：
$ dpkg -i libstdc++2.10-glibc2.2_2.95.4-27_i386.deb
补充：若不执行这一步。在运行命令"$ ./jad "时，会报“libstdc++-libc6.2-2.so.3 not found”错误！

五、解压apk文件之后看到res文件夹和AndroidManifest.xml文件
无法打开，只能借助三方工具AXMLPrinter2.jar打开
更新地址：http://code.google.com/p/android4me/downloads/list

准备好工具之后，如何逆向一个apk？

1,解压apk，因为apk本质是一个zip格式压缩文件
$ unzip [apk_path.apk]
classes.dex文件就是apk应用层源码文件

2,将dex转换为jar文件
$ d2j-dex2jar.sh classes.dex

3,通过java环境运行jd-gui-1.1.0.jar
导入jar文件，可以浏览class源码信息

4,查看布局文件和组件清单文件
java -jar AXMLPrinter2.jar AndroidManifest.xml
