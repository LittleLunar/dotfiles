" Fundamentals "{{{
" ---------------------------------------------------------------------
" init autocommand
autocmd!
" set script encoding
scriptencoding utf-8

set nobackup
set showcmd
set title
set scrolloff=10
set laststatus=2
set cmdheight=1
set expandtab
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set number
set autoindent
set tabstop=2
set mouse=a
set showmatch
set hlsearch
set tabstop=2
set softtabstop=2
set shiftwidth=2
set cursorline
set ttyfast
set splitright
set splitbelow
set shell=zsh
set backupskip=/tmp/*,/private/tmp/*
set smarttab
set ignorecase
set lazyredraw
set backspace=start,eol,indent
set path+=**
set wildignore=+=*/node_modules/*

set formatoptions+=r
syntax enable
filetype plugin indent on
"}}}

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript
" Fish
au BufNewFile,BufRead *.fish set filetype=fish

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}

"  Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim

if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  runtime ./windows.vim
endif

runtime ./maps.vim
"}}} 

" Color schemes" {{{
" ---------------------------------------------------------------------
if exists("&termguicolors") && exists("&winblend")
  set termguicolors
  syntax enable
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

"}}}

set foldmethod=marker foldlevel=0
