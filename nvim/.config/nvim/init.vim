let mapleader=" "

" __Standard Bindings__
" Basic file system commands
nnoremap <C-t> :!touch<Space>
nnoremap <C-d> :!mkdir<Space>
nnoremap <C-m> :!mv<Space><Space>

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Alias replace all to S
nnoremap S :%s//gI<Left><Left><Left>

" Shortcut split opening
nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>

" Alias write and quit to Q
nnoremap <leader>q :wq<CR>
nnoremap <leader>w :w<CR>

" save file as sudo when no sudo permissions
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Basic settings
syntax on
set encoding=utf-8
set number relativenumber
set noerrorbells
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set noswapfile
set hlsearch
set smartcase
set ignorecase
set incsearch

" Tab Settings
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Cursor settings
set mouse=a
set cursorline

" Autocompletion
set wildmode=longest,list,full

" Fix splitting
set splitbelow splitright

set autoindent
set smartindent
set smarttab
set smartcase

set ruler

set undolevels=1000
set backspace=indent,eol,start
set clipboard=unnamedplus

" Bar theme
"AirlineTheme {luna}
let g:airline_theme='minimalist'

call plug#begin('~/.config/nvim/plugged')
	Plug 'junegunn/goyo.vim'
	Plug 'jeffkreeftmeijer/vim-numbertoggle'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()
