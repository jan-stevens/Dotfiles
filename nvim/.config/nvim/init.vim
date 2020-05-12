"==========================================================================
"==========================================================================
"===                        (_)                                         ===
"===            _ __ __   __ _  _ __ ___   _ __  ___                    ===
"===           | '_  \\ \ / /| || '_ ` _ \ | '__|/ __|                  ===
"===           | | | |\ V / | || | | | | || |  | (__                    ===
"===           |_| |_| \_/  |_||_| |_| |_||_|   \___|                   ===
"===                                                                    ===
"==========================================================================
"==========================================================================


let mapleader=" "

" __Standard nvim settings__

" Remove trailing whitespace on save
    autocmd BufWritePre * %s/\s\+$//e

" Shortcutting split navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

" Enable and disable auto comment
    " map <leader>c : setlocal formatoptions-=cro<CR>
    " map <leader>C : setlocal formatoptions=cro<CR>
    set formatoptions-=cro

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

" Spell-check set to <leader>s, 's' for 'orthography':
    set spelllang=en_us,nl
    map <leader>en : setlocal spell! spelllang=en_gb<CR>
    map <leader>du : setlocal spell! spelllang=nl<CR>

" Terminal configuration
    tnoremap <Esc> <C-\><C-n>:q!<CR>

" Window resizing mappings /*{{{*/
    nnoremap <Up> :resize +2<CR>
    nnoremap <Down> :resize -2<CR>
    nnoremap <Left> :vertical resize +2<CR>
    nnoremap <Right> :vertical resize -2<CR>

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
    set hidden
    set pumheight=10

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

" Setting a short update time. Default is 4s, this leads to delays and poor user experience.
    set updatetime=300

" Autocompletion
    set wildmode=longest,list,full

" Fix splitting
    set splitbelow splitright

" Give more space for displaying messages.
    set cmdheight=2


" ___Plugin settings___

" __Goyo__
    map <leader>f :Goyo<CR>

" __Lightline__
    let g:lightline={'colorscheme': 'wombat',}
    set laststatus=2
    set noshowmode

" __Colorscheme__
    set termguicolors
    colorscheme spacegray
    let g:spacegray_underline_search=1
    let g:spacegray_use_italics=1
    let g:spacegray_low_contrast=0

" __Nerdtree__
    map <leader>n :NERDTreeToggle<CR>
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    let g:NERDTreeMinimalUI = 1
    let g:NERDTreeWinPos = "right"

" __Ctrlp__
    let g:ctrlp_user_command = 'find %s -type f'
    let g:ctrlp_map='<c-p>'
    let g:ctrlp_working_path_mode = 'ra'

" __Easymotion__
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

" __Limelight__
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!

    " Number of preceding/following paragraphs to include (default: 0)
        let g:limelight_paragraph_span = 1

    " Default value is 0.5
        let g:limelight_default_coefficient = 0.7

" __Startify__
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | Startify | endif
    " Includes modified files when in git directory
        function! s:gitModified()
            let files = systemlist('git ls-files -m 2>/dev/null')
            return map(files, "{'line': v:val, 'path': v:val}")
        endfunction

    " same as above, but show untracked files, honouring .gitignore
        function! s:gitUntracked()
            let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
            return map(files, "{'line': v:val, 'path': v:val}")
        endfunction

    " configure what is shown by default
        let g:startify_lists = [
                \ { 'type': 'files',     'header': ['   Recent files'] },
                \ { 'type': 'dir',       'header': ['   Recent files in '. getcwd()] },
                \ { 'type': 'sessions',  'header': ['   Sessions'] },
                \ { 'type': 'bookmarks', 'header': ['   Bookmarks'] },
                \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
                \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
                \ { 'type': 'commands',  'header': ['   Commands'] },
                \ ]
        let g:startify_custom_header = [
                \ '                                 ',
                \ '            __                   ',
                \ '    __  __ /\_\    ___ ___       ',
                \ '   /\ \/\ \\/\ \ /'' __` __`\    ',
                \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \    ',
                \ '    \ \___/  \ \_\ \_\ \_\ \_\   ',
                \ '     \/__/    \/_/\/_/\/_/\/_/   ',
                \ ]

" __LatexLivePreview__
    let g:livepreview_engine = 'zathura'
    autocmd BufRead,BufNewFile *.tex set filetype=tex
    let g:livepreview_cursorhold_recompile = 0
    let g:livepreview_engine = 'pdflatex'
    " key mappings for latex
        augroup filetype_latex
          autocmd!
          autocmd BufRead *.tex nnoremap <buffer> <leader>c : LLPStartPreview<CR>
        augroup END

" __MarkdownLivePreview__
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    " key mappings for markdown
        augroup filetype_markdown
          autocmd!
          autocmd BufRead *.md nnoremap <buffer> <leader>c : MarkdownPreview<CR>
        augroup END

" __RunPythonCode__
    autocmd BufRead,BufNewFile *.py set filetype=python
    " key mappings for python excecution
        augroup filetype_python
            autocmd!
            autocmd BufRead *.py nnoremap <buffer> <leader>c : w<CR>:!python %<CR>
        augroup END
" __Plug__
call plug#begin('~/.config/nvim/plugged')
    Plug 'lilydjwg/colorizer'
    Plug 'mhinz/vim-startify'
    Plug 'junegunn/limelight.vim'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/goyo.vim'
    Plug 'jeffkreeftmeijer/vim-numbertoggle'
    Plug 'itchyny/lightline.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tomtom/tcomment_vim'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'easymotion/vim-easymotion'
    Plug 'sheerun/vim-polyglot'
    Plug 'ryanoasis/vim-devicons'
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
    Plug 'vimlab/split-term.vim'
call plug#end()
