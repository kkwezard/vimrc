set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'Valloric/YouCompleteMe'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/taglist.vim'
Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on

"let <backspace> can delete initial tab
set backspace=indent,eol,start

" Syntax highlight
syntax on

" Font
if has("win32")
    set guifont=consolas:h11
endif

" Color scheme
if has("gui")
    colorscheme torte
else
    colorscheme default
endif

" Display number
set number

" Indent related
set autoindent
set smartindent
filetype indent on

" Enable file type specified plugin
filetype plugin on

" Tab related
autocmd filetype make setlocal noexpandtab
autocmd filetype python setlocal noexpandtab
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Allow buffer switch without saving dirty buffer
set hidden

" No swap and backup
set nobackup
set nowb
set noswapfile

" Auto reload after file modified
set autoread

" Wrap line
set wrap

" Highlight search and incremental search
set hlsearch
set incsearch

" Fast way to switch between windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" List buffers
nmap <F2> :ls<cr>:buffer<space>
imap <F2> <C-O>:ls<cr>

" Quick saving
nmap <leader>w :w<cr>

" Cancel all highlights
map <silent> <leader><cr> :nohlsearch<cr>

" Switch current directory to current buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Quick open .vimrc and source it
nmap <leader>e :e! ~/.vimrc<cr>
autocmd bufwritepost .vimrc source ~/.vimrc

" Toggle tag list
nmap <silent> <F3> :TlistToggle<cr>
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Process_File_Always=0
let Tlist_Inc_Winwidth=0
let Tlist_Ctags_Cmd='ctags'

" Auto completion for bracket and quote
inoremap ( ()<left>
inoremap () ()<left>
inoremap [ []<left>
inoremap [] []<left>
inoremap " ""<left>
inoremap "" ""<left>
inoremap ' ''<left>
