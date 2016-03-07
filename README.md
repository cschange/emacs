# emacs
# 这是一份非常简单的Emacs+llvm+ming-w64(windows)+python的配置文件。
# 上传的目的在于，让每一个对emacs感兴趣的朋友能够拿到一个已经做好了简单入门配置的emacs
# 记得浏览init.el文件，把"yourname"更改成你的个人信息，还有更改你的个人邮箱
* 改动说明
# 所有的自定义配置文件都存放在 ~/.emacs.d/init.el中，以下简称配置文件
# 多数配置都已经设置配置接口，可以在配置文件中随意修改，已附带中文说明。
# 具体详细的配置可以查看init.el文件。
# 有必要说明的是，此套配置在Linux（ubuntu）,windows 10,windows7下做了测试。其他环境未知。
* 使用前需要做的准备，所需文件：
windows :
1，x86_64-5.3.0-release-posix-seh-rt_v4-rev0（mingw64）
2,LLVM-3.7.1-win64 (LLVM+clang)
3,python-3.5.1-amd64,
4,get-pip.py
5，emacs-24.5-bin-i686-mingw32.zip
5，基于emacs-tango-darkblue修改的cschange-one-theme.el;
ubuntu:
1,clang+llvm-3.7.1-x86_64-linux-gnu-ubuntu-14.04.tar.xz
2,emacs-24.5.tar.xz
3,Python-3.5.1.tar.xz

* Setup ##### 安装说明
windows:
1，解压x86_64-5.3.0-release-posix-seh-rt_v4-rev0.7z。
2，复制mingw64到c:/（或任意目录，个人建议C的根目录）
3，将emacs解压到emacs文件夹，建议复制到c:/
4,安装python-3.5.1(或其他你所需要的版本)
5，配置环境变量：
HOME：
新建变量名为HOME，变量值为：e:\emacs(你的emacs目录)
PATH：
     PATH中添加mingw64:c:\mingw64\bin
     添加llvm:c:\llvm\bin
     python如果没有，自行添加。
     当然你也可以在path中添加c:\emacs\bin，这样你可以在命令行中启动emacs.
安装pip：
     cmd进入get-pip.py所在目录，运行 python get-pip.py进行安装
     path中添加C:\Python35\Scripts\
安装python插件：
     cmd --> pip install rope 
     pip install flake8
     pip install importmagic
     pip install jedi
     pip install ipython
关于主题，复制cschange-one-theme.el 到  C:\emacs\share\emacs\24.5\etc\themes\目录下。
到此，如果你的步骤都正确的话，启动emacs.C-x-f，~/.emacs.d/init.el查看配置文件，了解其中配置的快捷键。
如果你是1366 x 768 把窗口配置修改成如下，其他微调就你自己来吧，另外，如果打开的时候太大可以先讲emacs最大化。
窗口配置：
              (set-frame-width (selected-frame) 130)                ;设置宽度
              (set-frame-height (selected-frame) 33)                ;设置高度
              (set-frame-position (selected-frame) 30 0)          ;设置左和top间距

ubuntu:
      emacs 安装：
      解压 emacs-24.5.tar.xz  tar -xvf emacs-24.5.tar.xz 得到emacs-24.5
      打开终端步骤如下：
               1，sudo apt-get install build-essential       （编译工具）
               2，sudo apt-get build-dep emacs24
               3，cd emacs-24.5(Emacs解压之后所在的目录)
               4,./configure --prefix=/opt/emacs
               5,make
               6,make install
      llvm+clang:
                1,tar -xvf clang+llvm-3.7.1-x86_64-linux-gnu-ubuntu-14.04.tar.xz
                将解压所得文件夹下目录复制到/opt/llvm sudo cp -Rfp ./clang+llvm-3.7.1-x86_64-linux-gnu-ubuntu-14.04
      /opt/llvm;(当然你也可以cp到其他目录)
       python的安装同上emacs，跳过1，2步。（ubuntu自带python2.7和3.4）这里可以省略。

       PATH添加：sudo vi ~/.bashrc （sudo gedit ~/.bashrc）末尾添加
       PATH=$PATH:/opt/llvm/bin
       PATH=$PATH:/opt/emacs/bin
       保存退出后 运行 source .bashrc
       
       python中的pip 同上。不同的是，ubuntu在安装时需要添加sudo.
       sudo python get-pip.py
       sudo pip install rope
       ...
       
       复制cschange主题文件到 themes目录 命令如下  sudo cp -p ~/cschange-theme.el /opt/emacs/......(不好意思不太记得)  
       

       好了，现在打开emacs，写一个1.py（print('h)）---->c-c c-c.
       写一个1.cpp  c-x 3  按f9   然后输入 c++ -o a.out 1.cpp   然后./a.out
                      
