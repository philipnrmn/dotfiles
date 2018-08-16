set nocompatible                                 " be iMproved, required
filetype off                                     " required
filetype plugin on                               " plugins though

set wildmenu
set wildignore+=*.swp,*.so,*.zip

set esckeys                                      " cursor keys
set ttyfast                                      " scroll like you mean it

set colorcolumn=120
set ruler                                        " line,char status
set number                                       " line numbers
if exists("&relativenumber")
  set relativenumber
  au BufReadPost * set relativenumber
endif

set noerrorbells                                 " stfu
set hlsearch                                     " highlight searches
set nostartofline                                " don't reset cursor on buffer enter

set showmode                                     " -- INSERT --
set title                                        " terminal title is current file
set titleold=                                    " avoid 'Thanks for flying Vim'

set shortmess=atI                                " avoid 'Hit ENTER to continue'

set tabstop=2 shiftwidth=2 expandtab             " fight me

syntax on
colorscheme distinguished
