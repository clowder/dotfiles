set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'JavaScript-Indent'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'rodjek/vim-puppet'
Bundle 'ack.vim'

set guifont=Monaco:h12
set encoding=utf-8

" solarized
set background=dark
color solarized

" powerline
set laststatus=2

" remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" use the system clipboard
if has("clipboard")
  set clipboard=unnamed
endif

set number

" No fucking wrapping!!!!
set nowrap

" 2 Space tabs
set autoindent
set smartindent
set softtabstop=2
set shiftwidth=2
set tabstop=4
set expandtab
set nosmarttab
"

" use ack
set grepprg=ack
set grepformat=%f:%l:%m

" disciplinary measures
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

