# n-vim
## my vim as python ide & hack text

## vim is great!
### mac 本地截图
![my_vim](http://7xj431.com1.z0.glb.clouddn.com/屏幕快照%202015-09-18%20上午11.03.55.png) <br/>

### 服务器端截图
![my_vim](http://7xj431.com1.z0.glb.clouddn.com/屏幕快照%202015-09-24%20上午12.45.15.png) <br/>

## use n-vim

    欢迎使用n-vim,如果有问题，请提交issue

### 0. 升级你的vim

    确保你的vim是7.4，否则部分插件无法使用

使用包管理工具安装vim: 例如mac(使用homebrew):

    ~> brew install vim --with-lua

升级完成后修改~/.zshrc(bash用户修改~/.bashrc)文件,添加下面这行

    alias vim="/path/to/vim7.4/bin/vim"

/path/to/vim7.4一般是包管理工具的默认安装目录

### 1. clone这个仓库

    ~> cd ~
    ~> git clone https://github.com/neo1218/n-vim.git

### 2. 安装 n-vim

    ~> cd ~/n-vim
    ~> chmod 777 install.sh
    ~> ./install.sh

### 3. vim 乱码

    如果你的vim显示乱码，请在~/.vimrc中添加

    set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
    set termencoding=utf-8
    set encoding=utf-8

<hr/>

## n-vim 使用说明
### 插件安装管理

    1. 在github上找寻相关插件
    2. 在 ~/.vim/bundle/ clone 插件所在的仓库
    3. 依据插件文档在 vimrc 文件中添加配置

### 常见快捷键设置

    0. <leader>映射,
    1. <esc>映射为jk
    2. ff 打开目录树导航
    3. <space> 进入命令输入:
    4. <space>:Minimap/MinimapClose: 开启/关闭 Minimap
    5. i + f2: 在插入模式中进入粘贴模式 <esc> 退出
    6. , + e: 直接退出
    7. , + E: 强制退出(一般用于无修改情况)
    8. ctrl-p: 自动补全选中


## my vim plugin

### vim-powerline

    vim增强状态栏

repo: https://github.com/Lokaltog/vim-powerline <br/>

### ctrlp

    文件快速搜索

repo: https://github.com/kien/ctrlp.vim <br/>


### jedi-vim

    自动补全

repo: https://github.com/davidhalter/jedi-vim <br/>


### vim-minimap(用于7.4)

    minimap

repo: http://github.com/severin-lemaignan/vim-minimap <br/>


### neocomplete.vim

    比较不错的自动补全

repo:  https://github.com/Shougo/neocomplete.vim.git <br/>

### nerdtree

    文件目录树导航

repo: https://github.com/scrooloose/nerdtree <br/>

<hr/>

## 感谢

    这是我第一次自己配置vim、安装插件,

    https://github.com/mbrochh/vim-as-a-python-ide
    这个pycon视频给了我很大的帮助

## 问题

    如果有问题，欢迎提issue
