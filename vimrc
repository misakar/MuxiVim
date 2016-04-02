" =======================================================
" [info]                                                |
" This is my vim file                                   |
" @neo1218 2015y 9m 17d                                 |
" version: 2.0                                          |
" =======================================================
" [ref]                                                 |
" --> https://www.youtube.com/watch?v=aHm36-na4-4       |
" --> https://github.com/mbrochh/vim-as-a-python-ide    |
" =======================================================
" -------------------- Basic Config ---------------------

" Autocmd Config
" -- auto run "source ~/.vimrc"
autocmd! bufwritepost .vimrc source %
" autocmd StdinReadPre * let s:std_in=1

" Character Encoding
set encoding=utf-8

" Key Map
" -- <esc> 2 jk
" -- : 2 <space>
inoremap jk <esc>
nnoremap <space> :
" -- next & prev
nnoremap <space>n <space>bn
nnoremap <space>p <space>bp

" -- insert(paste)
set pastetoggle=<F2>
set clipboard=unnamed
" -- BACKSPACE
set bs=2

" -- toggle fold: z
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

" Leader
let mapleader = ","

" Ctrl -> nohl
nnoremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Exit Mode (force)
noremap <Leader>e :quit<CR>
noremap <Leader>E :qa!<CR>

" Nerdtree
map ; :NERDTreeToggle<CR>
let NERDTreeDirArrows=0

" Vim move
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Vim previous buffer & next buffer
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" >>, <<
vnoremap < <gv
vnoremap > >gv

" Show empty <space>
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=green guibg=green
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color Theme
" -- muxi
"  -- wombat256mod
"   -- clue
"    -- blackdust
"     -- solarized(default theme)
set t_Co=256
" color muxi
" color wombat256mod
" color clue
" color blackdust
" solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
syntax enable
set background=light
colorscheme solarized

" Code Syntax
filetype off
filetype plugin indent on
syntax on

" Tab set (important for pythoner)
set tabstop=4
set shiftwidth=4
set expandtab
" -- change tab to 4 <space> for python
vnoremap <space>%ret! 4 <space>op

" More for Vim
set number  " show line num
set tw=80   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Format
vmap Q gq
nmap Q gqap

" Others
set history=700
set undolevels=700

" Search setting
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files -
" they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Cscope Setting
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>


"=======================================================
" plugin management by pathogen :)
"=======================================================
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
call pathogen#infect()

" vim-startify setting
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
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" vim-minimap setting
" cd ~/.vim/bundle
" git clone git://github.com/severin-lemaignan/vim-minimap
let g:minimap_highlight='Visual'

" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable

" To be continued
