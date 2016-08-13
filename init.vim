" <----------------------------  MuxiVim  --------------------------->
" MuxiVim neovim config
" @neo1218 on MIT License
" https://github.com/neo1218/muxivim

" <-----------------------  Plugins Management ---------------------->
" vim-plug
call plug#begin()
Plug 'Shougo/neocomplete.vim'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'davidhalter/jedi-vim'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

" <-----------------------  Auto Command ---------------------------->
autocmd!
autocmd bufwritepost $MYVIMRC source $MYVIMRC
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=green guibg=green
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
" <------------------------- Code Folding --------------------------->
set foldmethod=manual

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

nnoremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

noremap <Leader>e :quit<CR>
noremap <Leader>E :qa!<CR>
noremap <Leader>w :w<CR>

map ; :NERDTreeToggle<CR>
let NERDTreeDirArrows=0

map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

vnoremap < <gv
vnoremap > >gv

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" <---------------------------  Color Theme --------------------------->
set background=dark
color molokai
let g:molokai_original = 1
" well use item2:)

" <---------------------------- Code Syntax --------------------------->
filetype on
filetype plugin on
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
set relativenumber
set tw=80                               " width of document (used by gd)
set wrap                            " don't automatically wrap on load
"set fo-=t                    " don't automatically wrap text when typing
set colorcolumn=80
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

" TagBar setting
nmap <F8> :TagbarToggle<CR>

" vim-airline setting
set laststatus=2
let g:airline_theme="tomorrow"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
nnoremap <C-N> :bn<CR>
nnoremap <C-M> :bp<CR>
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
set background=dark

" delimitMate
au FileType python let b:delimitMate_nesting_quotes = ['"']

" vim-gundo
nnoremap <F5> :GundoToggle<CR>

" To be continued
