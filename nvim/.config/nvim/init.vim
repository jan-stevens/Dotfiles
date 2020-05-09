"==========================================================================
"==========================================================================
"===                        (_)                                         ===
"===                 __   __ _  _ __ ___   _ __  ___                    ===
"===                 \ \ / /| || '_ ` _ \ | '__|/ __|                   ===
"===                  \ V / | || | | | | || |  | (__                    ===
"===                  \_/  |_||_| |_| |_||_|   \___|                    ===
"===                                                                    ===
"==========================================================================
"==========================================================================

let mapleader=" "

" __Standard Bindings__

" Basic file system commands
    nnoremap <C-t> :!touch<Space>
    nnoremap <C-d> :!mkdir<Space>

" Remove trailing whitespace on save
    autocmd BufWritePre * %s/\s\+$//e

" Shortcutting split navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

" Enable and disable auto comment
    map <leader>c : setlocal formatoptions-=cro<CR>
    map <leader>C : setlocal formatoptions=cro<CR>
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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

" Goyo plugin makes text more readable when writing prose:
    map <leader>f :Goyo \| set linebreak<CR>

" Spell-check set to <leader>s, 's' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Basic settings
    set encoding=utf-8
    set number relativenumber
    set noerrorbells
    set linebreak
    set showbreak=+++
    set nobackup
    set noswapfile
    set smartcase
    set autoindent
    set smartindent
    set smartcase
    set undolevels=1000
    set backspace=indent,eol,start
    set showmatch

" Set search options
    set ignorecase
    set hlsearch
    set incsearch

" Set clipboard
    set clipboard=unnamedplus

" Set ruler
    set ruler
    set colorcolumn=80

" Tab Settings
    set smarttab
    set expandtab
    set shiftwidth=4
    set softtabstop=4
    set tabstop=4

" Cursor settings
    set mouse=a
    hi cursorline cterm=NONE ctermbg=238
    augroup CursorLine
        au!
        au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
        au WinLeave * setlocal nocursorline
     augroup END

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
    set updatetime=300

" Autocompletion
    set wildmode=longest,list,full

" Fix splitting
    set splitbelow splitright

" Give more space for displaying messages.
    set cmdheight=2

" Lightline
    let g:lightline={'colorscheme': 'wombat',}
    set laststatus=2
    set noshowmode

" Colorscheme
    set termguicolors
    colorscheme spacegray
    let g:spacegray_underline_search=1
    let g:spacegray_use_italics=1
    let g:spacegray_low_contrast=0

" Nerdtree configuration
    map <leader>n :NERDTreeToggle<CR>
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    let NERDTreeMinimalUI = 1
    let NERDTreeDirArrows = 1

" Ctrlp
    let g:ctrlp_user_command = 'find %s -type f'
    let g:ctrlp_map='<c-p>'
    let g:ctrlp_working_path_mode = 'ra'

" Easymotion configuration
    let g:EasyMotion_smartcase = 1
    " <Leader>f{char} to move to {char}
    map  <Leader><Leader>f <Plug>(easymotion-bd-f)
    nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
    " s{char}{char} to move to {char}{char}
    nmap s <Plug>(easymotion-overwin-f2)
    " Move to line
    map <Leader><Leader>l  <Plug>(easymotion-bd-jk)
    nmap <Leader><Leader>l <Plug>(easymotion-overwin-line)
    " Move to word
    map  <Leader><Leader>w <Plug>(easymotion-bd-w)
    nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)

call plug#begin('~/.config/nvim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'junegunn/goyo.vim'
	Plug 'jeffkreeftmeijer/vim-numbertoggle'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'itchyny/lightline.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tomtom/tcomment_vim'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'easymotion/vim-easymotion'
    Plug 'sheerun/vim-polyglot'
call plug#end()
