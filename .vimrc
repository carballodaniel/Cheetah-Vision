""""""""""""""""""""""""""""""""""""""""""""
" .vimrc                                   "
" Junhyeok Ahn ( junhyeokahn91@gmail.com ) "
""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""
" General Setting "
"""""""""""""""""""
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible
syntax on
set ruler
set bs=indent,eol,start
set autoindent
set smartindent
set pastetoggle=<F8>
set nowrap
set textwidth=0
set cursorline
set colorcolumn=80
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showtabline=1
set scrolloff=3
set ignorecase
set smartcase
set incsearch
set hlsearch
set expandtab
set wildmenu
set wildmode=list:longest,full
set wildignore=*.swp,*.swo,*.class
set mouse=a
set ttymouse=xterm2
set noswapfile
set nobackup
set list
set listchars=tab:»\ ,trail:·,extends:>,precedes:<
set clipboard=unnamed

let mapleader=','
let maplocalleader=','
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
nnoremap <Leader>e :e %:h
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

