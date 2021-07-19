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
"
let mapleader=" "
" __Standard nvim settings__

" Remove trailing white space on save
    autocmd BufWritePre * %s/\s\+$//e

" Quick macro execution
    nnoremap , @q
" Fix indenting visual block
    vmap < <gv
    vmap > >gv

" User urview to choose and open an urls
    noremap <leader>u :w \| startinsert \| term urlview %<cr>

" Short cutting split navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

" remap j k to jump between visible lines
    nnoremap k gk
    nnoremap j gj

" Alias replace all to S
    nnoremap S :%s//gI<Left><Left><Left>

" Short cut split opening
    nnoremap <leader>h :split<Space>
    nnoremap <leader>v :vsplit<Space>

" Alias write and quit to Q
    nnoremap <leader>q :wq<CR>
    nnoremap <leader>w :w<CR>

" Spell-check set to <leader>s, 's' for 'orthography':
    set spelllang=en_gb,nl
    map <leader>en : setlocal spell! spelllang=en_gb<CR>
    map <leader>du : setlocal spell! spelllang=nl<CR>

" Window resizing mappings
    nnoremap <Up> :resize +2<CR>
    nnoremap <Down> :resize -2<CR>
    nnoremap <Left> :vertical resize +2<CR>
    nnoremap <Right> :vertical resize -2<CR>

" Print section title or divider
    nnoremap <leader>t :call CreateTitle()<cr>
    nnoremap <leader>T :call BigCreateTitle()<cr>
    nnoremap <leader>b :call CreateSmallBorder()<cr>
    nnoremap <leader>B :call CreateBigBorder()<cr>

" Basic settings
    set encoding=UTF-8
    set number relativenumber
    set noerrorbells
    set noswapfile
    set smartcase
    set autoindent
    set smartindent
    set smartcase
    set undolevels=500
    set backspace=indent,eol,start
    set showmatch
    set hidden
    set scrolloff=5
    filetype indent plugin on
    syntax on
    set nocompatible
    set inccommand=nosplit

" Set search options
    set ignorecase
    set hlsearch
    set incsearch

" Set clipboard
    set clipboard=unnamedplus

" Set ruler
    set ruler
    set colorcolumn=100
    au BufReadPost,BufNewFile *.md,*.txt,*.tex setlocal tw=99 | setlocal fo=aw2tq
    autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | setlocal tw=99 | endif
    autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | setlocal fo=aw2tq | endif
    set showbreak=+++

" Give more space for displaying messages.
    set cmdheight=2

" Tab Settings
    set smarttab
    set expandtab
    set shiftwidth=4
    set softtabstop=4
    set tabstop=4

" Cursor settings
    set mouse=a
    hi cursorline cterm=NONE ctermbg=238
    set cursorline
    augroup CursorLine
        au!
        au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
        au WinLeave * setlocal nocursorline
    augroup END

" Autocompletion in commandline
    set wildmenu
    set wildmode=longest,list,full

" Fix splitting
    set splitbelow splitright

" Implement Ascii art font
    nmap <leader>an :.!toilet -w 200 -f fonts/standard<CR>
    nmap <leader>ab :.!toilet -w 200 -f pagga<CR>
    nmap <leader>as :.!toilet -w 200 -f smblock<CR>
    nmap <leader>am :.!toilet -w 200 -f smbraille<CR>
    " makes Ascii border
    nmap <leader>af :.!toilet -w 200 -f term -F border<CR>


"Implement folding
    nnoremap <s-tab> za
    nnoremap <leader>z zfip
    set foldmethod=manual
    set foldtext=MyFoldText()

" ___Plugin settings___

" __tcomment__
    " add filetype below and comment style in:
    " ~/.config/nvim/plugged/tcomment_vim/autoload/tcomment/types/mytypes.vim
    " check filetype: set ft?
    autocmd BufRead,BufNewFile *.in setf lammpsInput

" __Goyo__
    map <leader>g :Goyo<CR>
    let g:goyo_width = 101
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
    " Install nerd font patched verion of jetbrains mono with aur


" __Easymotion__
    let g:EasyMotion_smartcase = 1
    " nnoremap <silent> <leader> k <Plug>(easymotion-overwin-f2)
    nmap s <Plug>(easymotion-overwin-f2)

" __Limelight__
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!

    " Number of preceding/following paragraphs to include (default: 0)
        let g:limelight_paragraph_span = 1

    " Default value is 0.5
        let g:limelight_default_coefficient = 0.5

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

" __Vimtex__
    let g:tex_flavor = 'lualatex'
    let g:vimtex_compiler_progname = 'nvr'
    " settings for zathura
        let g:vimtex_view_general_viewer = 'zathura'
    " hopefully hiddig annoying window
        let g:vimtex_quickfix_mode=0
    " enable concealment
        set conceallevel=1
        let g:tex_conceal='abdmg'
    " key mappings for latex
        let g:vimtex_mappings_enabled = 0
        nnoremap <silent> <leader>lt : VimtexTocToggle<CR>
        nnoremap <silent> <leader>lv : VimtexView<CR>
        nnoremap <silent> <leader>lw : VimtexCountWords<CR>
        nnoremap <silent> <leader>le : VimtexErrors<CR>
        nnoremap <silent> <leader>lc : VimtexClean<CR>

        augroup filetype_latex
            autocmd!
            autocmd BufRead *.tex nnoremap <buffer> <leader>c :VimtexCompile<CR>
        augroup END

" __WriteGood__
    nnoremap  <silent> ;w :WritegoodToggle<CR>

" __RunPythonCode__
    autocmd BufRead,BufNewFile *.py set filetype=python
    " key mappings for python excecution
        augroup filetype_python
            autocmd!
            autocmd BufRead *.py nnoremap <buffer> <leader>c :w<CR> :!python %<CR>
        augroup END

" __Floaterm__
    " __Bottom Terminal__
        nnoremap   <silent>  ;t :FloatermNew --wintype=normal --position=bottom --height=0.3<CR>
        tnoremap  <silent>  ;h <C-\><C-n>:FloatermToggle<CR>
        nnoremap  <silent>  ;h :FloatermToggle<CR>
        tnoremap  <silent>  <Esc> <C-\><C-n><CR>
        tnoremap  <silent>  <leader><Esc> <C-\><C-n>:q<CR>
" __FZF__
    " Map shortcuts
        nnoremap   <silent> ;f :Files<CR>
        nnoremap   <silent> ;r :Rg<CR>

    let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-h': 'split',
      \ 'ctrl-v': 'vsplit' }

    "Get Files
        command! -bang -nargs=? -complete=dir Files
        \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

    " Get text in files with Rg
        command! -bang -nargs=* Rg
         \ call fzf#vim#grep(
         \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
         \   fzf#vim#with_preview(), <bang>0)

    " Border color
        let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }

    " Ripgrep advanced
        function! RipgrepFzf(query, fullscreen)
          let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
          let initial_command = printf(command_fmt, shellescape(a:query))
          let reload_command = printf(command_fmt, '{q}')
          let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
          call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
        endfunction

    let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
    let $FZF_DEFAULT_COMMAND="rg --files --hidden"
    command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

    " Customize fzf colors to match your color scheme
        let g:fzf_colors =
          \ { 'fg':      ['fg', 'Normal'],
          \ 'bg':      ['bg', 'Normal'],
          \ 'hl':      ['fg', 'Comment'],
          \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
          \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
          \ 'hl+':     ['fg', 'Statement'],
          \ 'info':    ['fg', 'PreProc'],
          \ 'border':  ['fg', 'Ignore'],
          \ 'prompt':  ['fg', 'Conditional'],
          \ 'pointer': ['fg', 'Exception'],
          \ 'marker':  ['fg', 'Keyword'],
          \ 'spinner': ['fg', 'Label'],
          \ 'header':  ['fg', 'Comment'] }

" __COC__
let g:coc_global_extensions = [
    \ 'coc-jedi',
    \ 'coc-snippets',
    \ 'coc-pyright',
    \ 'coc-vimtex'
    \ ]

    " TextEdit might fail if hidden is not set.
        set hidden

    " Some servers have issues with backup files, see #649.
        set nobackup
        set nowritebackup

    " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
    " delays and poor user experience.
        set updatetime=100

    " Don't pass messages to |ins-completion-menu|.
        set shortmess+=c
    " Always show the signcolumn, otherwise it would shift the text each time
    " diagnostics appear/become resolved.
        set signcolumn=yes

    " Use tab for trigger completion with characters ahead and navigate.
    " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
    " other plugin before putting this into your config.
        inoremap <silent><expr> <TAB>
              \ pumvisible() ? "\<C-n>" :
              \ <SID>check_back_space() ? "\<TAB>" :
              \ coc#refresh()
        inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

        function! s:check_back_space() abort
          let col = col('.') - 1
          return !col || getline('.')[col - 1]  =~# '\s'
        endfunction

    " Use <c-space> to trigger completion.
        inoremap <silent><expr> <c-space> coc#refresh()

    " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
    " position. Coc only does snippet and additional edit on confirm.
    " <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
        if exists('*complete_info')
          inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
        else
          inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
        endif

    " Use `[g` and `]g` to navigate diagnostics
        nmap <silent> [g <Plug>(coc-diagnostic-prev)
        nmap <silent> ]g <Plug>(coc-diagnostic-next)

    " GoTo code navigation.
        nmap <silent> gd <Plug>(coc-definition)
        nmap <silent> gy <Plug>(coc-type-definition)
        nmap <silent> gi <Plug>(coc-implementation)
        nmap <silent> gr <Plug>(coc-references)

    " Use K to show documentation in preview window.
        nnoremap <silent> K :call <SID>show_documentation()<CR>

        function! s:show_documentation()
          if (index(['vim','help'], &filetype) >= 0)
            execute 'h '.expand('<cword>')
          else
            call CocAction('doHover')
          endif
        endfunction

    " Highlight the symbol and its references when holding the cursor.
        autocmd CursorHold * silent call CocActionAsync('highlight')

    " Symbol renaming.
        nmap <leader>rn <Plug>(coc-rename)

    " Formatting selected code.
        xmap <leader>f  <Plug>(coc-format)
        nmap <leader>f  <Plug>(coc-format)

        augroup mygroup
          autocmd!
          " Setup formatexpr specified filetype(s).
          autocmd FileType typescript,json,python setl formatexpr=CocAction('formatSelected')
          " Update signature help on jump placeholder.
          autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
        augroup end

    " Add `:Format` command to format current buffer.
        command! -nargs=0 Format :call CocAction('format')

    " Add `:Fold` command to fold current buffer.
        command! -nargs=? Fold :call     CocAction('fold', <f-args>)

    " Add `:OR` command for organize imports of the current buffer.
        command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

    " Add (Neo)Vim's native status line support.
    " NOTE: Please see `:h coc-status` for integrations with external plugins that
    " provide custom statusline: lightline.vim, vim-airline.
        set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

    " Mappings using CoCList:
    " Show all diagnostics.
        nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
    " Do default action for next item.
        nnoremap <silent> <space>j  :<C-u>CocNext<CR>
    " Do default action for previous item.
        nnoremap <silent> <space>k  :<C-u>CocPrev<CR>

"__Vim-Lexical__

    autocmd BufNewFile,BufRead * call lexical#init()
    let g:lexical#spell = 0         " 0=disabled, 1=enabled
    let g:lexical#spelllang = ['en_gb','nl',]
    let g:lexical#spell_key = '<leader>s'

"__Vim-snippets__
    " <C-j> :  advance to next tab stop
    " <C-k> : reverse to previous tab stop

"__ultisnips__
    let g:UltiSnipsExpandTrigger = '<s-tab>'
    let g:UltiSnipsJumpForwardTrigger = '<s-tab>'
    " let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"__Bullets__
    let g:bullets_enabled_file_types = [
        \ 'markdown',
        \ 'text',
        \]
"__Tabularize__
    " map <leader>a= <Nop>
    " map <leader>a: <Nop>
    " if exists(":Tabularize")
    "   nmap <Leader>a= :Tabularize /=<CR>
    "   vmap <Leader>a= :Tabularize /=<CR>
    "   nmap <Leader>a: :Tabularize /:\zs<CR>
    "   vmap <Leader>a: :Tabularize /:\zs<CR>
    " endif
    nnoremap <leader>a= : Tabularize /=<CR>
    vnoremap <leader>a= : Tabularize /=<CR>
    nnoremap <leader>a<Bar> : Tabularize /<Bar><CR>
    vnoremap <leader>a<Bar> : Tabularize /<Bar><CR>
    nnoremap <Leader>a: :Tabularize /:<CR>
    vnoremap <Leader>a: :Tabularize /:<CR>

" __Plug__
    call plug#begin('~/.config/nvim/plugged')
        " Startup screen
        Plug 'mhinz/vim-startify'
        " File manager
        Plug 'preservim/nerdtree'
        " Motion
        Plug 'easymotion/vim-easymotion'
        Plug 'psliwka/vim-smoothie'
        " Terminal
        Plug 'voldikss/vim-floaterm'
        " Easthetic changes
        Plug 'jeffkreeftmeijer/vim-numbertoggle'
        Plug 'ryanoasis/vim-devicons'
        " Automated typing
        Plug 'sirver/ultisnips'
        Plug 'honza/vim-snippets'
        Plug 'tomtom/tcomment_vim'
        Plug 'jiangmiao/auto-pairs'
        Plug 'Vimjas/vim-python-pep8-indent'
        Plug 'reedes/vim-lexical'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'tpope/vim-surround'
        """
        " Using the COC plugins: vimtex,texlab,python,snippets
        """
        " Status bar
        Plug 'itchyny/lightline.vim'
        " Distraction free mode
        Plug 'junegunn/limelight.vim'
        Plug 'junegunn/goyo.vim'
        " Document compiling(.tex and .md)
        Plug 'lervag/vimtex'
        " Syntax highlight
        " Plug 'sheerun/vim-polyglot'
        " Searching
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'airblade/vim-rooter'
        " VimWiki
        Plug 'dkarter/bullets.vim'
        Plug 'vimwiki/vimwiki'
        Plug 'godlygeek/tabular'
        " Plug 'plasticboy/vim-markdown'
        " Misc
        Plug 'davidbeckingsale/writegood.vim'
        Plug 'zhimsel/vim-stay'
        Plug 'vim-scripts/LargeFile'
    call plug#end()

" __Homemade functions__
    "Presentation mode
    let s:hidden_all = 0
    function! ToggleHiddenAll()
        if s:hidden_all  == 0
            let s:hidden_all = 1
            set noshowmode
            set noruler
            set cursorline!
            set colorcolumn=0
            set laststatus=0
            " set noshowcmd
            set relativenumber!
            set number!
            set hidden!
            set signcolumn=no
        else
            let s:hidden_all = 0
            set showmode
            set ruler
            set colorcolumn=80
            set laststatus=2
            set showcmd
            set number relativenumber
            set hidden
            set signcolumn=yes
        endif
    endfunction

    let g:presentationBoundsDisplayed = 0
    function! DisplayPresentationBoundaries()
      if g:presentationBoundsDisplayed
        match
        set colorcolumn=0
        let g:presentationBoundsDisplayed = 0
      else
        highlight lastoflines ctermbg=darkred guibg=darkred
        match lastoflines /\%23l/
        set colorcolumn=80
        let g:presentationBoundsDisplayed = 1
      endif
    endfunction

    function! FindExecuteCommand()
      let line = search('\S*!'.'!:.*')
      if line > 0
        let command = substitute(getline(line), "\S*!"."!:*", "", "")
        execute "silent !". command
        execute "normal gg0"
        redraw
      endif
    endfunction

    function! BigCreateTitle()
        let l:amount=80
        normal VU"eyy
        "get lenght of string but it includes newline char
        "@e is at buffer e thats where the line above copies to
        let l:actlength=(strlen(@e)-3)
        let l:remain=(l:amount - l:actlength - 10)
        let l:half=((l:remain / 2) - 1)
        normal "_dd
        normal o
        normal 99i#
        normal "ep
        normal I
        normal A
        execute "normal! 0". 10 . "i "
        execute "normal! 0". l:half . "i#"
        execute "normal! $". 10 . "A "
        execute "normal! $". l:half . "A#"
        "modulo to get remainer for even/odd figuring
        if(fmod(l:actlength - 1,2) > 0)
            normal A#
        endif
        normal o
        normal 99i#
    endfunction

    function! CreateTitle()
        let l:amount=80
        normal VU"eyy
        "get lenght of string but it includes newline char
        "@e is at buffer e thats where the line above copies to
        let l:actlength=(strlen(@e))
        let l:remain=(l:amount - l:actlength - 9)
        let l:half=((l:remain / 2))
        normal "_dd
        normal "ep
        normal I
        normal A
        execute "normal! 0". 9 . "i "
        execute "normal! 0". l:half . "i-"
        execute "normal! $". 9 . "A "
        execute "normal! $". l:half . "A-"
        "modulo to get remainer for even/odd figuring
        if(fmod(l:actlength,2) > 0)
            normal A-
        endif
        normal I#
    endfunction

    function! CreateBigBorder()
        normal 99i#
        normal o
        normal 99i#
    endfunction

    function! CreateSmallBorder()
        normal 99i-
    endfunction

    function! MyFoldText()
        let line = getline(v:foldstart)
        let folded_line_num = v:foldend - v:foldstart
        let line_text = substitute(line, '^"{\+', '', 'g')
        let fillcharcount = &textwidth - len(line_text) - len(folded_line_num)
        return '+'. repeat('-', 4) . line_text  . repeat('·', fillcharcount) . ' ( ' . folded_line_num . 'L ) '
    endfunction
