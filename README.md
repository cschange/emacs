# emacs
# ����һ�ݷǳ��򵥵�Emacs+llvm+ming-w64(windows)+python�������ļ���
# �ϴ���Ŀ�����ڣ���ÿһ����emacs����Ȥ�������ܹ��õ�һ���Ѿ������˼��������õ�emacs
# �ǵ����init.el�ļ�����"yourname"���ĳ���ĸ�����Ϣ�����и�����ĸ�������
* �Ķ�˵��
# ���е��Զ��������ļ�������� ~/.emacs.d/init.el�У����¼�������ļ�
# �������ö��Ѿ��������ýӿڣ������������ļ��������޸ģ��Ѹ�������˵����
# ������ϸ�����ÿ��Բ鿴init.el�ļ���
# �б�Ҫ˵�����ǣ�����������Linux��ubuntu��,windows 10,windows7�����˲��ԡ���������δ֪��
* ʹ��ǰ��Ҫ����׼���������ļ���
windows :
1��x86_64-5.3.0-release-posix-seh-rt_v4-rev0��mingw64��
2,LLVM-3.7.1-win64 (LLVM+clang)
3,python-3.5.1-amd64,
4,get-pip.py
5��emacs-24.5-bin-i686-mingw32.zip
5������emacs-tango-darkblue�޸ĵ�cschange-one-theme.el;
ubuntu:
1,clang+llvm-3.7.1-x86_64-linux-gnu-ubuntu-14.04.tar.xz
2,emacs-24.5.tar.xz
3,Python-3.5.1.tar.xz

* Setup ##### ��װ˵��
windows:
1����ѹx86_64-5.3.0-release-posix-seh-rt_v4-rev0.7z��
2������mingw64��c:/��������Ŀ¼�����˽���C�ĸ�Ŀ¼��
3����emacs��ѹ��emacs�ļ��У����鸴�Ƶ�c:/
4,��װpython-3.5.1(������������Ҫ�İ汾)
5�����û���������
HOME��
�½�������ΪHOME������ֵΪ��e:\emacs(���emacsĿ¼)
PATH��
     PATH�����mingw64:c:\mingw64\bin
     ���llvm:c:\llvm\bin
     python���û�У�������ӡ�
     ��Ȼ��Ҳ������path�����c:\emacs\bin�������������������������emacs.
��װpip��
     cmd����get-pip.py����Ŀ¼������ python get-pip.py���а�װ
     path�����C:\Python35\Scripts\
��װpython�����
     cmd --> pip install rope 
     pip install flake8
     pip install importmagic
     pip install jedi
     pip install ipython
�������⣬����cschange-one-theme.el ��  C:\emacs\share\emacs\24.5\etc\themes\Ŀ¼�¡�
���ˣ������Ĳ��趼��ȷ�Ļ�������emacs.C-x-f��~/.emacs.d/init.el�鿴�����ļ����˽��������õĿ�ݼ���
�������1366 x 768 �Ѵ��������޸ĳ����£�����΢�������Լ����ɣ����⣬����򿪵�ʱ��̫������Ƚ�emacs��󻯡�
�������ã�
              (set-frame-width (selected-frame) 130)                ;���ÿ��
              (set-frame-height (selected-frame) 33)                ;���ø߶�
              (set-frame-position (selected-frame) 30 0)          ;�������top���

ubuntu:
      emacs ��װ��
      ��ѹ emacs-24.5.tar.xz  tar -xvf emacs-24.5.tar.xz �õ�emacs-24.5
      ���ն˲������£�
               1��sudo apt-get install build-essential       �����빤�ߣ�
               2��sudo apt-get build-dep emacs24
               3��cd emacs-24.5(Emacs��ѹ֮�����ڵ�Ŀ¼)
               4,./configure --prefix=/opt/emacs
               5,make
               6,make install
      llvm+clang:
                1,tar -xvf clang+llvm-3.7.1-x86_64-linux-gnu-ubuntu-14.04.tar.xz
                ����ѹ�����ļ�����Ŀ¼���Ƶ�/opt/llvm sudo cp -Rfp ./clang+llvm-3.7.1-x86_64-linux-gnu-ubuntu-14.04
      /opt/llvm;(��Ȼ��Ҳ����cp������Ŀ¼)
       python�İ�װͬ��emacs������1��2������ubuntu�Դ�python2.7��3.4���������ʡ�ԡ�

       PATH��ӣ�sudo vi ~/.bashrc ��sudo gedit ~/.bashrc��ĩβ���
       PATH=$PATH:/opt/llvm/bin
       PATH=$PATH:/opt/emacs/bin
       �����˳��� ���� source .bashrc
       
       python�е�pip ͬ�ϡ���ͬ���ǣ�ubuntu�ڰ�װʱ��Ҫ���sudo.
       sudo python get-pip.py
       sudo pip install rope
       ...
       
       ����cschange�����ļ��� themesĿ¼ ��������  sudo cp -p ~/cschange-theme.el /opt/emacs/......(������˼��̫�ǵ�)  
       

       ���ˣ����ڴ�emacs��дһ��1.py��print('h)��---->c-c c-c.
       дһ��1.cpp  c-x 3  ��f9   Ȼ������ c++ -o a.out 1.cpp   Ȼ��./a.out
                      
