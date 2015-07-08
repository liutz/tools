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

**5.生成SSH密钥**

 >Creates a new ssh key, using the provided email as a label  
 `$ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`

 >Downloads and installs xclip. If you don't have `apt-get`, you might need to use another installer (like `yum`)    
 `$ sudo apt-get install xclip `
 
 >Copies the contents of the id_rsa.pub file to your clipboard   
 `$ xclip -sel clip < ~/.ssh/id_rsa.pub `

**6.git修改commit历信**
- 执行如命令，然后将左边pick修改为e保存退出

  `git rebase -i HEAD~3`

  `git rebase -i 1b07d0994e0a910ca6f473ee29d3211dc9dabefc`

- 你可以修改提交，执行命令

  `git commit --amend` 

- 一旦你对自己的改变感到满意，运行
  
  `git rebase --continue` 

**7.更新gerrit自动生成Change-Id**

`git reset --mixed origin/master`

`git add .`

`git commit -m "This is a new commit for what I originally planned to be amended"`

`git push origin master`
