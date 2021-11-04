" Configuration for Vim

" Disable compatibility with vi which can cause unexpected issues
set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Vim-Plug For Managing Plugins 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Nord color scheme
Plug 'arcticicestudio/nord-vim'

" Initialize plugin system
call plug#end()

" Set colorscheme
colorscheme nord

" Enable file type detection
filetype on

" Enable plugins and load plugin for the detected file type
filetype plugin on

" Load an indent file for the detected file type
filetype indent on

" Turn on syntax highlighting
syntax on

" Display cursor position in the file
set ruler

" Override the ignorecase option if searching for capital letters
" This will allow you to search specifically for capital letters
set smartcase

" Activate line numbers
set number

" Use spaces instead of tabs
set expandtab

" Be smart using tabs
set smarttab

" Set shift width to 4 spaces
set shiftwidth=4

" Set tab width to 4 columns
set tabstop=4

" Highlight cursor line horizontally
set cursorline

" Highlight cursor line vertically
" set cursorcolumn

" Do not save backup files and disable swap file
set nobackup noswapfile

" Do not wrap lines. Allow long lines to extend as far as the line goes
set nowrap

" Ignore capital letters during search
set ignorecase

" While searching though a file incrementally highlight matching characters as you type
set incsearch

" Show partial command you type in the last line of the screen
set showcmd

" Show the mode you are on the last line
set showmode

" Show matching words during a search
set showmatch

" Use highlighting when doing a search
set hlsearch

" Set the commands to save in history default number is 20
set history=1000

" Set if term supports 256 colors
set t_Co=256

" Always show statusline
" set laststatus=2
