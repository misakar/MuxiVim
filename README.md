
        __     __                     (O)
       ’  |   |  |    | `  \ \   / /  | |\ \    / (_)
       |  |   |  |    | |   \ \_/ /   | | \ \  / / _ _ __ ___
       |  \__/\  |    | |   /  _  \   | |  \ \/ / | | ''_ ` _ \
       | |     | |    | |  /  / \  \  | |   \  /  | | | | | | |
       | |     |_|____|_|_/_/`   `\_\_|_|    \/   |_|_| |_| |_|
       | |
       | |        ~~ vim for muxistudio ~~
       |_\           -> powered by neo1218 <-

## Dead simple neovim config
![muxivim](https://cloud.githubusercontent.com/assets/10671733/17434882/9ade6eb8-5b3f-11e6-86e7-9db5bcf5ead4.png)

## Install
1. Install [NeoVim]( https://salt.bountysource.com/teams/neovim)
2. Clone MuxiVim
    + <code>$ cd ~</code>
    + <code>$ git clone https://github.com/neo1218/muxivim</code>
3. Run install.sh
    + <code>$ cd muxivim</code>
    + <code>$ sh install.sh</code>

## Plugin Management
### [vim-plug](https://github.com/junegunn/vim-plug)
--> <code>🌺 Minimalist Vim Plugin Manager</code><br/>
![vim-plug](https://raw.githubusercontent.com/junegunn/i/master/vim-plug/installer.gif)

## Plugins
### [Vim-Startify](https://github.com/mhinz/vim-startify)
--> <code>The fancy start screen for Vim.</code> <br/>

    " <------------------------ vim-startify setting ---------------------->
    let g:startify_custom_header = [
                \ '   __    ___      _   __     __  (O)',
                \ '  ’  |   |  |    | `  \ \   / /  | |\ \    / (_)           ',
                \ '  |  |   |  |    | |   \ \_/ /   | | \ \  / / _ _ __ ___   ',
                \ '  |  \__/\  |    | |   /  _  \   | |  \ \/ / | | ''_ ` _ \ ',
                \ '  | |     | |    | |  /  / \  \  | |   \  /  | | | | | | | ',
                \ '  | |     |_|____|_|_/_/`   `\_\_|_|    \/   |_|_| |_| |_| ',
                \ '  | |',
                \ '  | |        ~~ vim for muxistudio ~~  ',
                \ '  |_\           -> powered by neo1218 <-  ',
                \ '',
                \ '',
                \ ]

    " <-------------------------- Plugins Setting ------------------------->

<hr/>
### [Vim-Airline](https://github.com/vim-airline/vim-airline)
--> <code>Lean & mean status/tabline for vim that's light as air.</code><br/>
![airline](https://raw.githubusercontent.com/wiki/vim-airline/vim-airline/screenshots/demo.gif)<br/>
--> [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)<br/>
--> [vim-airline字体配置](http://www.jianshu.com/p/310368097c75)<br/>
--> [Slow startup time (and also switch between buffer)](https://github.com/neovim/neovim/issues/2219)

<hr/>
### [NerdTree](https://github.com/scrooloose/nerdtree)
--> <code>A tree explorer plugin for vim.</code><br/>
--> [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)

<hr/>
### [TagBar](https://github.com/majutsushi/tagbar)
--> <code>Vim plugin that displays tags in a window, ordered by scope</code><br/>
--> you need install <code>ctags</code> first
<hr/>

> ### [Command-T](https://github.com/wincent/command-t)
> --> <code>Fast file navigation for VIM</code><br/>

<hr/>
### [ctrlp.vim](https://github.com/kien/ctrlp.vim)
--> <code>Fast Fast file navigation for VIM</code><br/>

### [Jedi-Vim](https://github.com/davidhalter/jedi-vim)
--> <code>Using the jedi autocompletion library for VIM.</code><br/>
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
<hr/>

## Code Completion
### [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
--> <code>A code-completion engine for Vim </code><br/>
--> **zip size**: 279KB<br/>

### [NeoComplete](https://github.com/Shougo/neocomplete.vim)
--> <code>neocomplete is the abbreviation of "neo-completion with cache". It provides
keyword completion system by maintaining a cache of keywords in the current buffer.
neocomplete can be customized easily and has many more features than Vim's built-in
completion.</code><br/>
--> **zip size**: 123KB<br/>

## Themes
### [Moloka](https://github.com/tomasr/molokai)
--> <code>Molokai is a Vim port of the monokai theme for TextMate originally created by Wimer Hazenberg.</code>
<hr/>
### Customized
you can config your own theme on this website:<br/>
--> http://bytefluent.com/vivify/

## MuxiVim 键位设置
**基本键位设置**

+ ```<Leader>``` --> ```,``` --> Leader键位设置
+ ```<ESC>``` --> ```jk``` --> jk 有益身体健康
+ ```<SPACE>``` --> ```:``` --> 方便进入命令模式
+ ```zc``` --> ```:call ToggleFold()``` --> 代码段折叠
+ ```<F2>``` --> 粘贴模式
+ ```<Leader> e``` --> 快速退出
+ ```<Leader> E``` --> 快速强制退出
+ ```<Leader> w``` --> 保存
+ ```<Leader> c``` --> 快速呼出vimrc进行编辑
+ ```<Leader> s``` --> 快速重载vimrc文件
+ **因为写Python的缘故, Tab自动格式为空格**

**插件键位设置**

+ ```<F5>``` --> 呼出undotree
+ ```<F8>``` --> 呼出tag
+ ```Ctrl-p``` --> 文件快速搜索(依据文件名)
+ ```;``` --> NERDTreeToggle(目录树)


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

## Why NeoVim ?
[Geoff's site: Why Neovim is Better than Vim](http://geoff.greer.fm/2015/01/15/why-neovim-is-better-than-vim/)
