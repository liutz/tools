**1.git基本配置**

    git config --global user.name "Tongzhu Liu"
    git config --global user.email liutongzhu@smartdevices.com.cn
    git config --global core.editor vim
    git config --global color.status auto
    git config --global color.branch auto
    git config --global color.interactive auto
    git config --global color.diff auto
    git config --global core.quotepath false

**2.配置自定义diff工具**
- 安装meld：sudo apt-get install meld
- 下载diffall脚本：https://github.com/liutz/tools/git/git-diffall
- 设置快捷方式：sudo ln -s /home/zeus/sdk/bin/git-diffall /bin/git-diffall
- git配置比较差异工具：git config --global diff.tool meld
- git配置diffall工具：git config --global alias.diffall git-diffall

*注：可以试一试git diffall 或git diffall --cached 命令*

**3.查看git提交记录gitk**
 `sudo apt-get install gitk`

**4.查看某个文件历史**
- 查看某一个文件所有改动历史
 `git log --pretty=oneline filename`

- 根据提交hash值查看具体修改
 `git show 356f6def9d3fb7f3b9032ff5aa4b9110d4cca87e`

