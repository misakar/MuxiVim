" <----------------------------  MuxiVim  --------------------------->
" MuxiVim vimrc file
" @neo1218 on MIT License
" https://github.com/neo1218/muxivim

" <-----------------------  Plugins Management ---------------------->
" dein
if &compatible
  set nocompatible
endif
set runtimepath^={abspath2dein.vim}
call dein#begin(expand('~/.cache/dein'))
call dein#add('{abspath2dein.vim}')
call dein#add('Shougo/neocomplete.vim')
call dein#add('mhinz/vim-startify')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('scrooloose/nerdtree')
call dein#add('majutsushi/tagbar')
call dein#add('kien/ctrlp.vim')
call dein#add('Raimondi/delimitMate')
call dein#add('davidhalter/jedi-vim')
call dein#add('sjl/gundo.vim')
call dein#add('tpope/vim-surround')
" call dein#add('Valloric/YouCompleteMe')
call dein#add('altercation/vim-colors-solarized')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#end()
filetype plugin indent on

" <-----------------------  Auto Command ---------------------------->
autocmd! bufwritepost .vimrc source %

" <----------------------- Character Encoding ----------------------->
set encoding=utf-8

" <---------------------------- Leader ------------------------------>
let mapleader = ","

" <----------------------------  Key Map ---------------------------->
nnoremap <c-u> viwU

nnoremap <Leader>c :vs $MYVIMRC<CR>
nnoremap <Leader>s :source $MYVIMRC<CR>

inoremap jk <esc>
nnoremap <space> :

nnoremap <space>n <space>bn
nnoremap <space>p <space>bp

set pastetoggle=<F2>
set clipboard=unnamed

set bs=2

let g:FoldMethod = 0
map z :call ToggleFold()<cr>
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun

nnoremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

noremap <Leader>e :quit<CR>
noremap <Leader>E :qa!<CR>
noremap <Leader>w :w<CR>

map ; :NERDTreeToggle<CR>
let NERDTreeDirArrows=0

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

vnoremap < <gv
vnoremap > >gv

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=green guibg=green
au InsertLeave * match ExtraWhitespace /\s\+$/

" <---------------------------  Color Theme --------------------------->
"                                  muxi
"                               wombat256mod
"                                  clue
"                                blackdust
"                          solarized(default theme)
" color muxi
" color wombat256mod
" color clue
" color blackdust
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
syntax enable
set background=light
colorscheme solarized

" <---------------------------- Code Syntax --------------------------->
filetype off
filetype plugin indent on
syntax on

" <--------------------- Tab set (important for pythoner) ------------->
set tabstop=4
set shiftwidth=4
set expandtab
vnoremap <space>%ret! 4 <space>op

" <--------------------------  More for Vim --------------------------->
set number                                               " show line num
set numberwidth=1                                         " number width
set tw=86                               " width of document (used by gd)
set nowrap                            " don't automatically wrap on load
set fo-=t                    " don't automatically wrap text when typing
set colorcolumn=86
highlight ColorColumn ctermbg=233

" <----------------------------  Format ------------------------------->
vmap Q gq
nmap Q gqap

" <----------------------------  Others ------------------------------->
set history=700
set undolevels=700

" <--------------------------- Search Setting ------------------------->
set hlsearch
set incsearch
set ignorecase
set smartcase

" <----------------- Disable stupid backup and swap files ------------->
set nobackup
set nowritebackup
set noswapfile

" <---------------------------- Cscope Setting ------------------------>
" if has("cscope")
"     set csprg=/usr/bin/cscope
"     set csto=1
"     set cst
"     set nocsverb
"     " add any database in current directory
"     if filereadable("cscope.out")
"         cs add cscope.out
"     endif
"     set csverb
" endif

" nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
" nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
" nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
" nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
" nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
" nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
" nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
" nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

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

" Command-T setting
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" TagBar setting
nmap <F8> :TagbarToggle<CR>

" vim-airline setting
set laststatus=2
let g:airline_theme="luna"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
set t_Co=256
let g:Powerline_symbols = 'fancy'

" jedi-vim setting
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" vim-minimap setting
let g:minimap_highlight='Visual'

" Python folding
set nofoldenable

" vim/indentLine setting
set background=light

" delimitMate
au FileType python let b:delimitMate_nesting_quotes = ['"']

" vim-gundo
nnoremap <F5> :GundoToggle<CR>

" To be continued
