# MuxiVim
## vim for muxi studio

## MuxiVim is great!
### mac 本地截图
![my_vim](http://7xj431.com1.z0.glb.clouddn.com/屏幕快照%202015-09-18%20上午11.03.55.png) <br/>

### 服务器端截图
![my_vim](http://7xj431.com1.z0.glb.clouddn.com/屏幕快照%202015-09-24%20上午12.45.15.png) <br/>

## use MuxiVim

    MuxiVim 是vim编辑器的一个DIY,采用[pathogen]管理插件,她集成了常用的vim插件, 既可以充当文本编辑器,又可以
    秒变IDE

## install MuxiVim
### 0. 升级你的vim

    确保你的vim是7.4，否则部分插件无法使用
    如果你的vim是7.4，那么请跳过步骤0

使用包管理工具安装vim: 例如mac(使用homebrew):

    ~> brew install vim --with-lua

升级完成后修改~/.zshrc(bash用户修改~/.bashrc)文件,添加下面这行

    alias vim="/path/to/vim7.4/bin/vim"

/path/to/vim7.4一般是包管理工具的默认安装目录

### 1. clone这个仓库

    ~> cd ~
    ~> git clone https://github.com/neo1218/MuxiVim.git

### 2. 安装 MuxiVim

    ~> cd ~/MuxiVim
    ~> chmod 777 install.sh
    ~> ./install.sh

### 3. vim 乱码

    如果你的vim显示乱码，请在~/.vimrc中添加

    set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
    set termencoding=utf-8
    set encoding=utf-8

<hr/>

## MuxiVim 使用说明
### 插件安装管理

    1. 在github上找寻相关插件
    2. 在 ~/.vim/bundle/ clone 插件所在的仓库
    3. 依据插件文档在 vimrc 文件中添加配置

### 特殊快捷键设置(完整说明: ISSUE #3)

    0.预备:
        1.模式之间采用 jk 切换
        2.<space>空格进入命令模式
        3.<leader>键映射为,

    1. normal正常模式
        1. ff: 开启目录树导航
        2. C-p: 快速搜索文件
        3. /: 查找
        4. :Minimap 开启minimap
        5. , + e ＝ wq
        6. , + E = q!

    2. i插入模式
        1. f2: 在插入模式下复制粘贴

    3. v可视模式

    其余快捷键与vim默认快捷键相同

## MuxiVim plugin

参见[MuxiVim plugin repo]()

<hr/>

## contribute to MuxiVim

    MuxiVim 是开源的采用GPL协议，所以希望所有使用MuxiVim的人都可以为这个vim编辑器
    作出贡献，让MuxiVim更好

### 贡献方式

    vim 的强大之处在于其丰富多彩的插件,如果你发现或自己编写了一个不错的vim插件，请
    将它分享出来。当然，首先你需要查阅MuxiVim插件库，确保这个插件不会被重复分享。
    如果你发现你的插件是独一无二的，那么请速速提交issue, issue 格式如下(以vim-powerline为例):

        share plugin: vim-powerline

        plugn name: vim-powerline
        github repo: https://github.com/Lokaltog/vim-powerline
        插件用处的简要介绍

    我会定期检查ISSUE并将分享插件添加进插件库,然后在更新日志中记录，这样所有所有使用
    MuxiVim的人就可以了结并选择使用你分享的插件啦:)

## MuxiVim plugin repo
url:https://github.com/neo1218/MuxiVim/tree/master/bundl://github.com/neo1218/MuxiVim/tree/master/bundle <br/>

## update MuxiVim

    只要定期查看更新日志，然后安装插件即可，安装插件的步骤见[MuxiVim 使用说明]

## thanks

    1. 《vim 实用技巧》我的入门书:)
    2. k-vim: 因为k-vim我喜欢上了vim
    3. https://github.com/mbrochh/vim-as-a-python-ide
    这个pycon视频给了我很大的帮助


## 更新日志(插件更新)

