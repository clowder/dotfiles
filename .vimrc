set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'ack.vim'
Bundle 'mudge/runspec.vim'

set nocompatible

" allow unsaved background buffers and remember marks/undo for them
set hidden

" remember more commands and search history
set history=10000

" 2 space tabs
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=4
set autoindent

" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase

" highlight current line
set cursorline

set switchbuf=useopen
set numberwidth=5
set showtabline=2
set winwidth=79

" keep more context when scrolling off the end of a buffer
set scrolloff=3

" display incomplete commands
set showcmd

" Enable highlighting for syntax
syntax on

" The Silver Searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" line numbers by default
set number

set encoding=utf-8

" theming
set t_Co=256 " 256 colors
set term=xterm-256color
set guifont=Monaco:h12
set background=dark
color solarized

" always show the status bar, powerline
set laststatus=2

" remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" use the system clipboard
if has("clipboard")
  set clipboard=unnamed
endif

" indent if we're at the beginning of a line. Else, do completion.
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" disable the arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

