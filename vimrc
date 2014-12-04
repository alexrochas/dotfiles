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
	NeoBundle 'altercation/vim-colors-solarized'
	NeoBundle 'kien/ctrlp.vim'
	NeoBundle 'scrooloose/syntastic'
	NeoBundle 'Yggdroot/indentLine'
	NeoBundle 'ervandew/supertab'
	NeoBundle 'Raimondi/delimitMate'
	NeoBundle 'tpope/vim-fugitive'
	NeoBundle 'scrooloose/nerdtree'
	NeoBundle 'Lokaltog/powerline'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

let mapleader = "\<space>"
set backspace=2
"autocmd BufEnter * lcd %:p:h

nmap <leader>d :NERDTreeToggle %<CR>

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

" tab
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Line numbers
set number

" Use <leader>t to open ctrlp
let g:ctrlp_map = '<leader>t'
" Ignore these directories
set wildignore+=*/build/**
" disable caching
let g:ctrlp_use_caching=0

syntax enable
set background=dark
colorscheme solarized

"transparent background"
"hi Normal ctermfg=252 ctermbg=none
"ctags -R --language-force=java -f .tags"
"set tags+=./tags;/
"set autochdir
set path+=**
set shiftwidth=4
set tabstop=4
set softtabstop=4
"map <C-S-C> "+y
"map <C-S-P> "+p
call togglebg#map("<F12>")
"maybe need run sudo xrdb ~/.Xdefaults to take effect color changes.
"hack to visual mode
hi Visual term=reverse cterm=reverse guibg=Grey
" Ctags magic for expanding finds.
nnoremap ,f :exec 'ts '.expand('<cword>') <CR>
nnoremap <F5> :e! <CR>
nnoremap <F6> :!ruby % <CR>
nnoremap <F8> :!python % <CR>
nnoremap <F7> :!gcc % <CR>
noremap ç :

nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

set tw=130
set colorcolumn=131
set relativenumber

set omnifunc=syntaxcomplete#Complete

" Setting to git commit msg.
autocmd BufRead COMMIT_EDITMSG set tw=65
autocmd BufRead COMMIT_EDITMSG set colorcolumn=66

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" compiler c
autocmd BufEnter *.c compiler gcc

autocmd BufNewFile *.sh call append(0,"\#!/bin/bash")
autocmd BufNewFile *.rb call append(0,"\#!/usr/bin/env ruby")
" autocmd FileType java set tags=~/.tags;./.tags;/
autocmd FileType java set tags=./tags;/
au VimResized * exe "normal! \<c-w>="

nmap <silent> + :exe "vertical resize +5"<CR>
nmap <silent> - :exe "vertical resize -5"<CR>
nmap <silent> <h-h> :hsplit
nmap <silent> <F2> :tabnew<CR>
"nigate between tabs
nnoremap tp :tabprevious<CR>
nnoremap tn :tabnext<CR>
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

" magic here
" au BufReadCmd *.docx,*.xlsx,*.pptx call zip#Browse(expand(""))
" au BufReadCmd *.odt,*.ott,*.ods,*.ots,*.odp,*.otp,*.odg,*.otg call zip#Browse(expand(""))

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
