call pathogen#infect()
call pathogen#helptags()

syntax on

set shell=/bin/bash
set nocompatible
filetype off
filetype plugin indent on       " load filetype-specific indent files

set t_Co=256
let g:hybrid_use_Xresources = 1
set background=dark
colorscheme hybrid

set tabstop=4		            " interpret tabs as 4 spaces
set softtabstop=4	            " use 4 spaces per tab
set shiftwidth=4                " spaces inserted for indentation
set expandtab		            " convert tabs to spaces
set number		                " show line numbers
set backspace=indent,eol,start  " allow backspacing over autoindent, line breaks, the start of insert
set cursorline		            " highlight current line
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
set nofoldenable                " disable folding
set noswapfile                  " disable .swp file creation

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

autocmd Filetype html            setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript      setlocal ts=2 sts=2 sw=2
autocmd Filetype json            setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript.jsx  setlocal ts=2 sts=2 sw=2

autocmd vimenter * if !argc() | NERDTree | endif     " enable NERDTree

let g:syntastic_check_on_open=1 " run lint on file open
let g:syntastic_javascript_checkers = ['eslint']

let g:go_fmt_command = "goimports"

imap <C-c> <CR><Esc>O
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>
nmap <F4> :GoDef<CR>
map <C-n> :NERDTreeToggle<CR>

