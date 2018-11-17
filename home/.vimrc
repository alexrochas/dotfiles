" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
    set nocompatible               " Be iMproved

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
    NeoBundle 'altercation/vim-colors-solarized' " Solarized theme
    NeoBundle 'ngmy/vim-rubocop'
    NeoBundle 'jacoborus/tender'
    NeoBundle 'rhysd/vim-crystal'
    NeoBundle 'skywind3000/quickmenu.vim'
    NeoBundle 'junegunn/goyo.vim'
    NeoBundle 'amix/vim-zenroom2'
    NeoBundle 'gabrielelana/vim-markdown'
    NeoBundle 'drzel/vim-line-no-indicator'
    NeoBundle 'luochen1990/rainbow'
    NeoBundle 'KKPMW/sacredforest-vim'
    "NeoBundle 'majutsushi/tagbar.vim'
    NeoBundle 'flazz/vim-colorschemes'
    NeoBundle 'kien/ctrlp.vim' " Search in project
    NeoBundle 'vim-syntastic/syntastic' " Syntax checker
    NeoBundle 'Yggdroot/indentLine' " Show vertical lines for indentation
    NeoBundle 'ameade/qtpy-vim' " Run python unit tests
    NeoBundle 'Raimondi/delimitMate' " Auto complete of quotes/parenthesis...
    NeoBundle 'andviro/flake8-vim' " Python checker for pep8/mcabe/frosted
    NeoBundle 'KabbAmine/zeavim.vim' " Zeal search
    "NeoBundle 'bling/vim-airline' " Status/tabline
    "NeoBundle 'ervandew/supertab'
    NeoBundle 'SirVer/ultisnips' " Snippets (to edit :UltiSnipsEdit)
    NeoBundle 'ekalinin/Dockerfile.vim' " Syntax for dockerfile
    NeoBundle 'keith/investigate.vim' " Looking documentation on browser/Zeal/Dash
    NeoBundle 'honza/vim-snippets' " Snippets
    NeoBundle 'terryma/vim-expand-region' " Expand region
    NeoBundle 'vim-multiple-cursors'
    NeoBundle 'gregsexton/gitv' " Git repository viewer
    NeoBundle 'Shougo/vimproc.vim', {
                \ 'build' : {
                \     'windows' : 'tools\\update-dll-mingw',
                \     'cygwin' : 'make -f make_cygwin.mak',
                \     'mac' : 'make -f make_mac.mak',
                \     'linux' : 'make',
                \     'unix' : 'gmake',
                \    },
                \ } " Interactive command execution
    NeoBundle 'airblade/vim-gitgutter' " Show's a git diff
    NeoBundle 'tpope/vim-fugitive' " Show git branch and other similar features
    NeoBundle 'scrooloose/nerdtree' " File navigation
    NeoBundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
    "NeoBundle 'xmisao/rubyjump.vim' " Go to code ruby
    NeoBundle 'slim-template/vim-slim' " Syntax highlighting
    NeoBundle 'tpope/vim-rails' " Functions for work with rails
    NeoBundle 'tpope/vim-bundler' " Use bundler from inside vim
    NeoBundle 'vim-ruby/vim-ruby' " Systax highlighting for ruby
    NeoBundle 'skalnik/vim-vroom' " Run ruby unit tests
    NeoBundle 'elzr/vim-json' " Syntax highlighting for json
    NeoBundle 'ecomba/vim-ruby-refactoring' " Ruby code rename and other functions
    NeoBundle 'tpope/vim-endwise' " Auto complete 'end' for ruby
    "NeoBundle 'hallettj/jslint.vim' " JSLint
    NeoBundle 'moll/vim-node' " Auto complete 'end' for ruby
    NeoBundle 'tpope/vim-cucumber'
    NeoBundle 'gavocanov/vim-js-indent'
    "NeoBundle 'sidorares/node-vim-debugger' " Node debugger
    "NeoBundle 'myhere/vim-nodejs-complete' " Node complete
    NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
    NeoBundle 'davidhalter/jedi-vim' " Use it for python
    let g:jedi#auto_initialization = 1
    let g:jedi#use_tabs_not_buffers = 0
    let g:jedi#popup_select_first = 0
    let g:jedi#goto_command = "<F3>"
    let g:jedi#goto_assignments_command = "<leader>g"
    let g:jedi#goto_definitions_command = ""
    let g:jedi#documentation_command = "K"
    let g:jedi#usages_command = "<leader>n"
    let g:jedi#completions_command = "<C-Space>"
    let g:jedi#rename_command = "<leader>r"
    NeoBundle 'hynek/vim-python-pep8-indent' " Pep8 indentation checker
    NeoBundle 'ahdinosaur-os/npm.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Vim swp files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

let mapleader = "\<space>"
set backspace=2
"autocmd BufEnter * lcd %:p:h

" Zen room
nnoremap <silent> <leader>g :Goyo<cr>

" syntactic
" https://zirho.github.io/2016/10/06/vim-syntastic-local/
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '✘'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '●'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Rubocop
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

" Matchit for end highligth
let g:hl_matchit_enable_on_vim_startup = 1

nmap <leader>d :NERDTreeToggle %<CR>

" Config for powerline
set laststatus=2
" Work for rxvt-unicode-256color
set t_Co=256

let g:nodejs_complete_config = {
\  'max_node_compl_len': 15
\}

" Ignore .pyc files in NERDTree
let NERDTreeIgnore = ['\.pyc$']

" open file in new tab
let NERDTreeMapOpenInTab='<leader>t'

" Register
set clipboard=unnamedplus

" Expand region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Zeal for docs!
" nmap NEW_MAPPING <Plug>Zeavim           " <leader>z (NORMAL mode)
" vmap NEW_MAPPING <Plug>ZVVisSelection   " <leader>z (VISUAL mode)
" nmap NEW_MAPPING <Plug>ZVKeyword        " <leader>Z
" nmap NEW_MAPPING <Plug>ZVKeyDocset      " <leader><leader>z

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

" tab
" retab when you already have a mess.
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

autocmd Filetype ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd Filetype yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2

" buffer switch with <C-o> and <C-i>

" paste magic
" set paste

" for copy from vim :%w !xclip -i -sel c or :%w xsel -i -b
" for paste to vim :%w !xclip -o -sel -c or :%w xsel -o -b
noremap <silent> <leader>c :w !xclip -i -sel -c<CR>
noremap <silent> <leader>p :w !xclip -o -sel -c<CR>

" Line numbers
set number

" Highlight search
set hlsearch

" flake8-vim
let g:PyFlakeOnWrite = 1
let g:PyFlakeCheckers = 'pep8,mccabe,frosted'
let g:PyFlakeDefaultComplexity=10
"let g:PyFlakeDisabledMessages = 'E501'
"let g:PyFlakeAggressive = 0
"let g:PyFlakeCWindow = 4
let g:PyFlakeSigns = 1
"let g:PyFlakeMaxLineLength = 100
"let g:PyFlakeRangeCommand = 'Q'

" Vim snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Clear search
nnoremap <leader>/ :let@/ = ""<CR>

" Smart search
set incsearch

" Use <leader>t to open ctrlp
let g:ctrlp_map = '<leader>t'
" Ignore these directories
set wildignore+=*/build/**
" disable caching
let g:ctrlp_use_caching=0

syntax enable
set background=dark
" colorscheme solarized
" colorscheme molokai
colorscheme sacredforest

augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline cursorcolumn
    au WinLeave * setlocal nocursorline nocursorcolumn
augroup END

"transparent background"
"hi Normal ctermfg=252 ctermbg=none
"ctags -R --language-force=java -f .tags"
"set tags+=./tags;/
"set autochdir
set path+=**

"map <C-S-C> "+y
"map <C-S-P> "+p
call togglebg#map("<F12>")
"maybe need run sudo xrdb ~/.Xdefaults to take effect color changes.
"hack to visual mode
hi Visual term=reverse cterm=reverse guibg=Grey
" Ctags magic for expanding finds.
nnoremap ,f :exec 'ts '.expand('<cword>') <CR>
nnoremap <F5> :e! <CR>
noremap ç :
au FileType python nnoremap <F8> :QTPY file verbose<CR>
au FileType python nnoremap <F9> :QTPY session<CR>
let g:qtpy_shell_command = "nosetests -v -s --nologcapture"

nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

set tw=130
set colorcolumn=131
au FileType python set tw=80|set colorcolumn=81
set relativenumber

set omnifunc=syntaxcomplete#Complete

" Setting to git commit msg.
autocmd BufRead COMMIT_EDITMSG set tw=65
autocmd BufRead COMMIT_EDITMSG set colorcolumn=66

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" CrtlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" compiler c
autocmd BufEnter *.c compiler gcc

autocmd BufNewFile *.sh call append(0,"\#!/bin/bash")
autocmd BufNewFile *.rb call append(0,"\#!/usr/bin/env ruby")
" autocmd FileType java set tags=~/.tags;./.tags;/
autocmd FileType java set tags=./tags;/
au VimResized * exe "normal! \<c-w>="

nmap <silent> + :exe "vertical resize +5"<CR>
nmap <silent> - :exe "vertical resize -5"<CR>
nmap <silent> <leader>h :split<CR>
nmap <silent> <leader>v :vsplit<CR>
"nmap <silent> <F2> :tabnew<CR>
"nigate between tabs
"nnoremap tp :tabprevious<CR>
"nnoremap tn :tabnext<CR>
"tab navigation like firefox
nmap <silent> > :tabnext<CR>
nmap <silent> < :tabprevious<CR>
nmap <silent> <F2> :tabnew<CR>
"horizontal split
"nnoremap hh :split<CR>

" trim whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Work for me eclim!
let g:EclimMakeLCDWarning = 1

" magic here
" au BufReadCmd *.docx,*.xlsx,*.pptx call zip#Browse(expand(""))
" au BufReadCmd *.odt,*.ott,*.ods,*.ots,*.odp,*.otp,*.odg,*.otg call zip#Browse(expand(""))

" python abreviations
" ab ipdb import ipdb; ipdb.set_trace()

" That macro thing! \o/
" press q and a lowercase letter to star recording, do your thing and press q to stop recording. Then press @ and the lowercase
" pressed before to do the magic!

" Disable one diff window during a three-way diff allowing you to cut out the
" noise of a three-way diff and focus on just the changes between two versions
" at a time. Inspired by Steve Losh's Splice
function! DiffToggle(window)
    " Save the cursor position and turn on diff for all windows
    let l:save_cursor = getpos('.')
    windo :diffthis
    " Turn off diff for the specified window (but keep scrollbind) and move
    " the cursor to the left-most diff window
    exe a:window . "wincmd w"
    diffoff
    set scrollbind
    set cursorbind
    exe a:window . "wincmd " . (a:window == 1 ? "l" : "h")
    " Update the diff and restore the cursor position
    diffupdate
    call setpos('.', l:save_cursor)
endfunction

" Toggle diff view on the left, center, or right windows
nmap <silent> <leader>dl :call DiffToggle(1)<cr>
nmap <silent> <leader>dc :call DiffToggle(2)<cr>
nmap <silent> <leader>dr :call DiffToggle(3)<cr>

function! DelTagOfFile(file)
    let fullpath = a:file
    let cwd = getcwd()
    let tagfilename = cwd . "/tags"
    let f = substitute(fullpath, cwd . "/", "", "")
    let f = escape(f, './')
    let cmd = 'sed -i "/' . f . '/d" "' . tagfilename . '"'
    let resp = system(cmd)
endfunction

function! UpdateTags()
    let f = expand("%:p")
    let cwd = getcwd()
    let tagfilename = cwd . "/tags"
    let cmd = 'ctags -a -f ' . tagfilename . ' --c++-kinds=+p --fields=+iaS --extra=+q ' . '"' . f . '"'
    call DelTagOfFile(f)
    let resp = system(cmd)
endfunction
autocmd BufWritePost *.java call UpdateTags()

" quickmenu
" enable cursorline (L) and cmdline help (H)
let g:quickmenu_options = "LH"

" clear all the items
call g:quickmenu#reset()

" bind to F12
noremap <silent><F12> :call quickmenu#toggle(0)<cr>

" section 1, text starting with "#" represents a section (see the screen capture below)
call g:quickmenu#append('# Develop', '')

call g:quickmenu#append('item 1.1', 'echo "1.1 is selected"', 'select item 1.1')
call g:quickmenu#append('item 1.2', 'echo "1.2 is selected"', 'select item 1.2')
call g:quickmenu#append('item 1.3', 'echo "1.3 is selected"', 'select item 1.3')

" section 2
call g:quickmenu#append('# Misc', '')

call g:quickmenu#append('item 2.1', 'echo "2.1 is selected"', 'select item 2.1')
call g:quickmenu#append('item 2.2', 'echo "2.2 is selected"', 'select item 2.2')
call g:quickmenu#append('item 2.3', 'echo "2.3 is selected"', 'select item 2.3')
call g:quickmenu#append('item 2.4', 'echo "2.4 is selected"', 'select item 2.4')

" tagbar
nmap <F8> :TagbarToggle<CR>

" Rainbow Brackets
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle"
