# 配置工作目录
export WORK_HOME=/home/zeus/mi
export PATH=$WORK_HOME:$PATH

# 配置开发工具
export SDK_HOME=/home/zeus/sdk
export PATH=$SDK_HOME:$PATH

# 配置JDK环境
export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/jconsole.jar:$JAVA_HOME/lib/sa-jdi.jar:$CLASSPATH
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH

# 配置Android SDK环境
export ANDROID_HOME=$SDK_HOME/android/android_sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools

# 配置NDK环境
export NDK=$SDK_HOME/android/android-ndk-r10c
export SDK_BIN=$SDK_HOME/bin
export PATH=$PATH:$NDK:$SDK_BIN

# 配置逆向工程
export APKTOOL_PATH=$SDK_HOME/decompile/apktool1.5.2/apktool.jar
export JAD_PATH=$SDK_HOME/decompile/jad158e.linux.intel
export DEX2JAR_PATH=$SDK_HOME/decompile/dex2jar-0.0.9.15
export PATH=$PATH:$JAD_PATH:$DEX2JAR_PATH

# 配置Maven环境
export MAVEN_PATH=$SDK_HOME/maven
export PATH=$PATH:$MAVEN_PATH/bin
ulimit -c unlimited

# 配置Gradle环境
export GRADLE_PATH=$SDK_HOME/gradle-2.2.1
export PATH=$PATH:$GRADLE_PATH/bin

# 配置Jetty环境
export JETTY_PATH=$SDK_HOME/jetty
export PATH=$PATH:$JETTY_PATH/bin

# 配置Go环境
export GOROOT=$SDK_HOME/go
export GOPATH=$WORK_HOME/go/work
export PATH=$PATH:$GOROOT/bin:$GOPATH

# 配置Eclipse环境
export ANDROID_ECLIPSE=$SDK_HOME/eclipse_android
export CLOUD_ECLIPSE=$SDK_HOME/eclipse_cloud
export PATH=$PATH:$ANDROID_ECLIPSE

# 配置Android Studio环境
export ANDROID_STUDIO=$SDK_HOME/android-studio
export PATH=$PATH:$ANDROID_STUDIO/bin

