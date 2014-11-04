" let <backspace> can delete initial tab
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

"[FIXME] Move a line up and down using ALT+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Quick open .vimrc and source it
nmap <leader>e :e! ~/.vimrc<cr>
autocmd bufwritepost .vimrc source ~/.vimrc

" Toggle tag list
nmap <silent> <F3> :TlistToggle<cr>

" Auto completion for bracket and quote
inoremap ( ()<left>
inoremap () ()<left>
inoremap [ []<left>
inoremap [] []<left>
inoremap " ""<left>
inoremap "" ""<left>
inoremap ' ''<left>

