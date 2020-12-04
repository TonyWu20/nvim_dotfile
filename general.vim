let mapleader = "\<Space>"
let maplocalleader = "`"

set nocompatible              " be iMproved, required
filetype off                  " required
set hidden
syntax enable
filetype on
let g:python3_host_prog = "/opt/homebrew/bin/python3"
let g:ruby_host_prog = "/opt/homebrew/lib/ruby/gems/2.7.0/bin/neovim-ruby-host"
let g:tagbar_ctags_bin = "/opt/homebrew/bin/ctags"
"let g:loaded_ruby_provider = 0
set incsearch
set inccommand=nosplit
set nohls
let mapleader = "\<Space>"
let maplocalleader = "`"
set number
set relativenumber
set encoding=utf-8
set autoindent
set smartindent
set scrolloff=4
set showmatch
set iskeyword+=-
set laststatus=2
set background=dark
set termguicolors
set clipboard=unnamed
set cmdheight=2
set updatetime=300
set signcolumn=yes
set noshowmode
set foldmethod=indent
set backspace=indent,eol,start
" switch to working directory when entering a buffer
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif
"let g:ale_disable_lsp = 1
