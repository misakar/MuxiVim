" ==============================================================================
" This is my vim file
" ref -> https://github.com/mbrochh/vim-as-a-python-ide
" @neo1218 2015y 9m 17d
" version: 1.0
" ==============================================================================
" ||  ||  ||====   ||     ||     |====|   O    neo1218
" ||==||  ||===    ||     ||     |    |  |||           vim on mac for python !
" ||  ||  ||====   ||__|  ||__|  |====|  \ /     vim
" ==============================================================================
"                                    基本配置
" ==============================================================================


" 自动加载相关配置
autocmd! bufwritepost .vimrc source %
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" 快捷键绑定
" 将<esc>键绑定为kj键(kj相比于esc有助健康,相比于jk有助思考:)
inoremap jk <esc>
" 将:键绑定为空格键
nnoremap <space> :


" 复制、粘贴大量代码
" --INSERT(paste)--
set pastetoggle=<F2>
set clipboard=unnamed


" backspace在vim中使用
set bs=2     " 使backspace可以正常使用


" 使用','作为leader键
let mapleader = ","


" 绑定 nohl
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>


" 快捷键
" 快速保存命令
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>
" 快速退出命令
noremap <Leader>e :quit<CR>  " 退出当前窗口
noremap <Leader>E :qa!<CR>   " 退出所有tab窗口
" 目录树导航
map <Leader>t :NERDTreeToggle<CR>


" Ctrl + <movement>(j,k,l,h) 在不同的窗口移动
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" 在不同的vim tab中进行移动
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" 选中段落, 使用 < 和 > 进行缩进和减少缩进(减少缩进的功能是很重要的)
vnoremap < <gv  " 方便减少整段缩进
vnoremap > >gv  " 增加整段缩进


" 显示空格
" 显示多余的空格可以更好的格式化代码
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=blue guibg=blue
au InsertLeave * match ExtraWhitespace /\s\+$/


" 终端颜色显示
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod


" 代码高亮(皮肤很重要:)
filetype off
filetype plugin indent on
syntax on


" 显示行号
set number  " 显示行号
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233


" 快速格式化段落
vmap Q gq
nmap Q gqap


" 比较好用的设置
set history=700
set undolevels=700


" 设置 tab 键
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" search setting
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile


"==============================================================================
"                       python      (""pathogen"")      插件管理
"==============================================================================
" 使用pathogen管理vim插件
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
call pathogen#infect()


" vim-powerline 配置
" vim-powerline 用于配置vim状态栏
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2


" ctrlp 配置
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*


" jedi-vim 配置
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>


" vim-minimap 配置
" cd ~/.vim/bundle
" git clone git://github.com/severin-lemaignan/vim-minimap
let g:minimap_highlight='Visual'


" neocomplete.vim 配置
" cd ~/.vim/bundle
" git clone https://github.com/Shougo/neocomplete.vim.git
let g:neocomplete#enable_at_startup = 1


set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction


inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable
