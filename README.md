# n-vim
## my vimrc file, using pathogen to manage vim plugin

## vim is great!
![my_vim](http://7xj431.com1.z0.glb.clouddn.com/屏幕快照%202015-09-18%20上午11.03.55.png) <br/>

## use n-vim

    欢迎使用n-vim,如果有问题，请提交issue

### 0. 升级你的vim

    确保你的vim是7.4，否则部分插件无法使用

使用包管理工具安装vim: 例如mac(使用homebrew):

    ~ brew install vim --with-lua

升级完成后修改~/.zshrc(bash用户修改~/.bashrc)文件,添加下面这行

    alias vim="/path/to/vim7.4/bin/vim"

/path/to/vim7.4一般是包管理工具的默认安装目录

### 1. clone这个仓库

    ~ cd ~
    ~ git clone https://github.com/neo1218/n-vim.git

### 2. 阅读 ~/.vimrc 文件!
这一点十分重要，你可以通过阅读该文件获取以下信息

    1. vim的快捷键设置
    2. 更改主题配色方案
    3. 插件安装管理

<hr/>

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
