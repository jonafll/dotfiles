"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable compatibility with vi which can cause unexpected issues
set nocompatible
filetype off

" PLUGINS ------------------------------------------------------------ {{{

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'

" Initialize plugin system
call plug#end()

" }}}

" Commands
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal


" COLORSCHEME ------------------------------------------------------------ {{{

colorscheme nord

" }}}



" NERDTREE ------------------------------------------------------------ {{{

let NERDTreeShowLineNumbers=1 
let NERDTreeShowHidden=1 
let g:NERDTreeWinSize=38

" }}}


" FILES ------------------------------------------------------------ {{{

" Enable plugins and load plugin for the detected file type
filetype plugin on

" Load an indent file for the detected file type
filetype indent on

" Do not save backup files and disable swap file
set nobackup noswapfile

" }}}


" GENERAL ------------------------------------------------------------ {{{

" Set encoding
set encoding=UTF-8

" Turn on syntax highlighting
syntax on

" Display cursor position in the file
set ruler

" Override the ignorecase option if searching for capital letters
" This will allow you to search specifically for capital letters
set smartcase

" Activate line numbers
set number

" Highlight cursor line vertically
" set cursorcolumn

" Do not wrap lines. Allow long lines to extend as far as the line goes
set nowrap

" Ignore capital letters during search
set ignorecase

" While searching though a file incrementally highlight matching characters as you type
set incsearch

" Show partial command you type in the last line of the screen
" set showcmd

" Lightline already displays this in the status line
set noshowmode

" Show matching words during a search
set showmatch

" Use highlighting when doing a search
set hlsearch

" Set the commands to save in history default number is 20
set history=1000

" Set if term supports 256 colors
set t_Co=256

" }}}


" MOUSE SCROLLING ------------------------------------------------------------ {{{

" Enable the use of the mouse in all modes
set mouse=a 

" Improves performance while scrolling
set synmaxcol=200

" Highlight cursor line horizontally (degrades performance while scrolling)
" set cursorline

" }}}


" TEXT ------------------------------------------------------------ {{{

" Use spaces instead of tabs
set expandtab

" Be smart using tabs
set smarttab

" Set shift width to 4 spaces
set shiftwidth=4

" Set tab width to 4 columns
set tabstop=4

" }}}


" STATUS LINE ------------------------------------------------------------ {{{
" %F – Display the full path of the current file
" %M – Modified flag shows if file is unsaved
" %Y – Type of file in the buffer
" %R – Displays the read-only flag
" %b – Shows the ASCII/Unicode character under cursor
" 0x%B – Shows the hexadecimal character under cursor
" %l – Display the row number
" %c – Display the column number
" %p%% – Show the cursor percentage from the top of the file

" Clear status line when vimrc is reloaded
" set statusline=

" Status line left side
" set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side
" set statusline+=%=

" Status line right side
" set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" The lightline.vim theme
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

" Show the status on the second to last line
set laststatus=2

" }}}


" WILDMENU ------------------------------------------------------------ {{{

" Enable auto completion menu after pressing Tab
set wildmenu

" Make wildmenu behave like similar to Bash completion
set wildmode=list:longest

" }}}


" KEY MAPPING ------------------------------------------------------------ {{{
" nnoremap – Allows you to map keys in normal mode (non-recursive)
" inoremap – Allows you to map keys in insert mode (non-recursive)
" vnoremap – Allows you to map keys in visual mode (non-recursive)

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" }}}

" Set split direction
set splitbelow splitright

" Remap splits navigation to CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
