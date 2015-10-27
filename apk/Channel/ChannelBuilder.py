#!/usr/bin/python
# -*- coding: utf-8 -*-
import sys
import zipfile
import shutil
import os
import time

# 定义APK路径
apk_path = raw_input("####请输入APK完整路径或APK文件名：")

# 简单校验
error_input_path = "输入APK完整路径错误或"+apk_path+"文件不在inputApk目录下"
if not os.path.isfile(apk_path):
	apk_path = 'inputApk/'+apk_path
	if not os.path.isfile(apk_path):
		apk_path = apk_path+'.apk'
		if not os.path.isfile(apk_path):
			sys.exit(error_input_path)

apk_path_file_name = os.path.basename(apk_path)
temp_list = os.path.splitext(apk_path_file_name)
apk_path_extension = temp_list[1]

if not ".apk" == apk_path_extension:
	sys.exit(error_input_path)

apk_version = raw_input("####请输入版本名称（例如：1.1.1）：")

print apk_path
print apk_version

# 创建一个空文件（不存在则创建）
src_empty_file = 'info/fitrun.txt'
f = open(src_empty_file, 'w') 
f.close()

# 获取渠道列表
channel_file = 'info/channel.txt'
f = open(channel_file)
lines = f.readlines()
f.close()

# 创建生成目录,与文件名相关
output_dir = 'output/'
if os.path.exists(output_dir):
	shutil.rmtree(output_dir)

if not os.path.exists(output_dir):
	os.mkdir(output_dir)

output_v_dir = 'output/v' + apk_version + '/'
if not os.path.exists(output_v_dir):
	os.mkdir(output_v_dir)

current_time = time.strftime('%Y%m%d',time.localtime(time.time()))

# 遍历渠道号并创建对应渠道号的apk文件
for line in lines:
	target_channel = line.strip()
	target_apk = output_v_dir + "Fitrunning_" + current_time+"_"+target_channel +"_v"+apk_version+ apk_path_extension
	shutil.copy(apk_path,  target_apk)
	zipped = zipfile.ZipFile(target_apk, 'a', zipfile.ZIP_DEFLATED)
	empty_channel_file = "META-INF/hmchannel_{channel}".format(channel = target_channel)
	zipped.write(src_empty_file, empty_channel_file)
	zipped.close()

