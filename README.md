# MuxiVim
vim for muxi studio
![muxi](https://avatars2.githubusercontent.com/u/10476331?v=3&s=200)

## MuxiVim is great!
![MuxiVim](http://7xj431.com1.z0.glb.clouddn.com/muxivim2)

## use MuxiVim

    MuxiVim 是vim编辑器的一个DIY,采用[pathogen]管理插件,她集成了常用的vim插件, 既可以充当文本编辑器,又可以
    秒变IDE

## install MuxiVim
### 0. 升级你的vim, 确认安装tmux

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
    3. 依据插件文档在 ~/.vimrc 文件中添加配置

### 特殊快捷键设置+截图(完整说明: ISSUE #3)
#### 0.预备:

1. 模式之间采用 jk 切换(jk绑定<esc>)
2. <space>空格进入命令模式(<space>绑定:)
3. <leader>键映射为,

#### 1.normal正常模式

1. ;开启目录树导航
![nerd tree](http://7xj431.com1.z0.glb.clouddn.com/nerdtree)

2. C-p快速搜索文件
![ctrl](http://7xj431.com1.z0.glb.clouddn.com/ctrlp)

3. :Minimap 开启minimap
![minimap](http://7xj431.com1.z0.glb.clouddn.com/minimap)

4. , + e ＝ wq
5. , + E = q!
6. v进入可视模式后全选,=进行代码格式化
![v](http://7xj431.com1.z0.glb.clouddn.com/v)

#### 2. i插入模式

1. f2: 在插入模式下复制粘贴
![paste](http://7xj431.com1.z0.glb.clouddn.com/paste)

#### 3. v可视模式
其余快捷键与vim默认快捷键相同

### tmux 配置(MuxiVim + Tmux = Super IDE!!!)
![vimux](http://7xj431.com1.z0.glb.clouddn.com/ppp) <br/>

1. C-a 为tmux命令热键
2. C-a r: 自动跟新配置(配置文件: ~/.tmux.conf)
3. C-a ": 上下分屏
4. C-a %: 左右分屏
5. C-a j: 上移屏
6. C-a k: 下移
7. C-a h: 左移
8. C-a l: 右移
9. 开启鼠标: 可使用鼠标在窗格间切换、改变窗格大小

<hr/>

## MuxiVim plugin repo
url:https://github.com/neo1218/MuxiVim/tree/master/bundle <br/>

## MuxiVim 配色
MuxiVim内置3种配色:<br/>

wombat255mode, clue, blackdust<br/>

可以在vimrc中选择配置

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


## update MuxiVim

    只要定期查看更新日志，然后安装插件即可，安装插件的步骤见[MuxiVim 使用说明]

## thanks

    1. 《vim 实用技巧》我的入门书:)
    2. k-vim: 因为k-vim我喜欢上了vim
    3. https://github.com/mbrochh/vim-as-a-python-ide
    这个pycon视频给了我很大的帮助


## 更新日志(插件更新)
2015年10月21:

    1.修改vimrc文件，将目录树开启由ff设置为;
    2.设置vim的python格式化为Google推荐的python格式

2015年11月12日:

	加入自定义的tmux配置

2016年1月9日:

    添加配色说明

