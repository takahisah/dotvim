filetype off
call pathogen#infect()
filetype plugin indent on   " load file type plugins + indentation

set nocompatible            " no compatibility with legacy vi
syntax enable
set background=dark
colorscheme solarized
set encoding=utf-8
set showcmd                 " display incomplete commands

set wrap                        " wrap lines
set tabstop=4
set shiftwidth=4                " a tab is two spaces
set softtabstop=4
set expandtab                   " use spaces, not tabs
set scrolloff=3                 " friendly scrolling
set autoindent
set backspace=indent,eol,start  " backspace through everything in insert mode
set list
set listchars=tab:▸\ ,eol:¬
set number                      " line numbering
set ruler
set laststatus=2                " always show status line

"" Searching
set hlsearch      " highlight matches
set incsearch     " incremental searching
set ignorecase    " searches are case insensitive..
set smartcase     " unless they contain at least one capital letter

"" vim-r-plugin setup
let vimrplugin_term = "/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal"

"" listen to mouse
if has("mouse")
    set mouse=a
endif

"" Mapping
let mapleader=","
map <leader>t :CommandTFlush<cr>\|:CommandT<cr>
inoremap jj <ESC>

let g:slime_target = "tmux"
