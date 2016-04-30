
        __     __                     (O)
       ’  |   |  |    | `  \ \   / /  | |\ \    / (_)
       |  |   |  |    | |   \ \_/ /   | | \ \  / / _ _ __ ___
       |  \__/\  |    | |   /  _  \   | |  \ \/ / | | ''_ ` _ \
       | |     | |    | |  /  / \  \  | |   \  /  | | | | | | |
       | |     |_|____|_|_/_/`   `\_\_|_|    \/   |_|_| |_| |_|
       | |
       | |        ~~ vim for muxistudio ~~
       |_\           -> powered by neo1218 <-

## Screenshots
### muxi light(default)
![start2](http://7xj431.com1.z0.glb.clouddn.com/muxivimstart2)<br/>
### muxi dark
![start3](http://7xj431.com1.z0.glb.clouddn.com/muxivim3)

## Install

    $ cd ~
    $ git clone https://github.com/neo1218/muxivim
    $ cd muxivim
    $ chmod 777 install.sh
    $ ./install.sh

## Plugins
### [Vim-Pathogen](https://github.com/tpope/vim-pathogen)
--> <code>Manage your 'runtimepath' with ease. In practical terms, pathogen.vim
makes it super easy to install plugins and runtime files in their own private
directories.</code><br/>
--> [config code](https://github.com/neo1218/MuxiVim/blob/master/vimrc#L149)
<hr/>
### [Vim-Startify](https://github.com/mhinz/vim-startify)
--> <code>The fancy start screen for Vim.</code> <br/>
--> [config code](https://github.com/neo1218/MuxiVim/blob/master/vimrc#L157)
<hr/>
### [Vim-Airline](https://github.com/vim-airline/vim-airline)
--> <code>Lean & mean status/tabline for vim that's light as air.</code><br/>
![airline](https://raw.githubusercontent.com/wiki/vim-airline/vim-airline/screenshots/demo.gif)<br/>
--> [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)-->
--> [config code](https://github.com/neo1218/MuxiVim/blob/master/vimrc#L174)-->
--> [vim-airline字体配置](http://www.jianshu.com/p/310368097c75)<--
<hr/>
### [NerdTree](https://github.com/scrooloose/nerdtree)
--> <code>A tree explorer plugin for vim.</code><br/>
--> [config code](https://github.com/neo1218/MuxiVim/blob/master/vimrc#L55)
<hr/>
### [TagBar](https://github.com/majutsushi/tagbar)
--> <code>Vim plugin that displays tags in a window, ordered by scope</code><br/>
--> [config code](https://github.com/neo1218/MuxiVim/blob/master/vimrc#L171)<br/>
--> you need install <code>ctags</code> first
<hr/>

> ### [Command-T](https://github.com/wincent/command-t)
> --> <code>Fast file navigation for VIM</code><br/>

<hr/>
### [ctrlp.vim](https://github.com/kien/ctrlp.vim)
--> <code>Fast Fast file navigation for VIM</code><br/>

### [Jedi-Vim](https://github.com/davidhalter/jedi-vim)
--> <code>Using the jedi autocompletion library for VIM.</code><br/>
--> [config code](https://github.com/neo1218/MuxiVim/blob/master/vimrc#L185)
<hr/>
### [delimitMate](https://github.com/Raimondi/delimitMate)
--> <code>provides insert mode auto-completion for quotes, parens,
brackets, etc.</code><br/>
<hr/>
### [Gundo.vim](https://github.com/sjl/gundo.vim)
--> <code>Gundo.vim is Vim plugin to visualize your Vim undo tree.</code><br/>
--> [website](http://sjl.bitbucket.org/gundo.vim/)<br/>
### [vim-surround](https://github.com/tpope/vim-surround)
--> <code>Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML
tags, and more. The plugin provides mappings to easily delete, change and add such
surroundings in pairs</code><br/>
### [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)<br/>
--> <code>precision colorscheme for the vim text editor http://ethanschoonover.com/solarized</code><br/>
--> [config code](https://github.com/altercation/vim-colors-solarized)

## Themes
the default theme is [muxi](https://github.com/neo1218/MuxiVim/blob/master/muxivim/colors/muxi.vim) <br/>
you can config your own theme on this website:<br/>
--> http://bytefluent.com/vivify/

## MuxiVim 键位设置
**基本键位设置**

+ ```<Leader>``` --> , --> Leader键位设置
+ ```<ESC>``` --> jk --> jk 有益身体健康
+ ```<SPACE>``` --> : --> 方便进入命令模式
+ z --> :call ToggleFold() --> 代码段折叠
+ ```<F2>``` --> 粘贴模式
+ ```<Leader> e``` --> 快速退出
+ ```<Leader> E``` --> 快速强制退出
+ ```<Leader> w``` --> 保存
+ ```<Leader> c``` --> 快速呼出vimrc进行编辑
+ 因为写Python的缘故, Tab自动格式为空格

**插件键位设置**

+ ```<F5>``` --> 呼出undotree
+ ```<F8>``` --> 呼出tag
+ Ctrl-p --> 文件快速搜索(依据文件名)
+ ; --> NERDTreeToggle(目录树)

## Tmux
Tmux是```unix*```下的一个分屏利器! **Tmux +
Vim**是我非常喜欢的一种开发方式,这里上传了我的[tmux配置](https://github.com/neo1218/MuxiVim/blob/master/tmux.conf), 效果:<br/>
![myTmux + MuxiVim](http://7xj431.com1.z0.glb.clouddn.com/muxitmux)

## License
GNU General Public License, version 2 (GPL-2.0)

## Thanks

+ vim实用技巧
+ [k-vim](https://github.com/wklken/k-vim)
+ https://www.youtube.com/watch?v=YhqsjUUHj6g
+ https://github.com/mbrochh/vim-as-a-python-ide
+ http://java-hackers.com/p/tracyone/vim

## VIM 大法好
Vi之大道如我心之禅, <br/>
Vi之慢路即为禅修, <br/>
Vi之命令禅印于心, <br/>
未得此道者视之怪诞, <br/>
与之为伴者洞其真谛, <br/>
长修此道者巨变人生。<br/>

