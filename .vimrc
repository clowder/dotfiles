packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('tpope/vim-sensible')

" language support
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('chrisbra/csv.vim')
call minpac#add('elixir-lang/vim-elixir')
call minpac#add('mxw/vim-jsx')
call minpac#add('pangloss/vim-javascript')
call minpac#add('tpope/vim-bundler')
call minpac#add('tpope/vim-haml')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-rake')

" prettyness
call minpac#add('chriskempson/base16-vim')
call minpac#add('itchyny/lightline.vim')

" the rest
call minpac#add('junegunn/fzf')
call minpac#add('mileszs/ack.vim')
call minpac#add('mudge/runspec.vim')
call minpac#add('rizzatti/dash.vim')
call minpac#add('tpope/vim-abolish')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-surround')

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
" set cursorline

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

" subtle reminder to wrap text.
set cc=81

set encoding=utf-8

" theming
colorscheme base16-default-dark
set background=dark
set t_Co=256 " 256 colors
set term=xterm-256color
set guifont=Monaco:h12
set ttyfast
set termguicolors
let base16colorspace=256

" always show the status bar, powerline
set laststatus=2

" make ack.vim use the thesilversearcher
let g:ackprg="ag --nogroup --nocolor --column"

" make CtrlP use ag for listing files
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" helping keep my commit messages clean
autocmd Filetype gitcommit setlocal spell cc=71

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

set wildignore+=*/tmp/*,*/log/*,*.swp,*/node_modules/*

" new splits appear below or to the right, don't move my eyes
set splitbelow
set splitright

" turn hybrid line numbers on
:set number relativenumber

" custom shortcuts
map <Leader>sc :vs db/schema.rb<cr>

" RIP ctrl-p
nnoremap <c-p> :FZF<cr>

" disable relative numbering and cursorline for Ruby files to fix slow renders
autocmd FileType ruby setlocal norelativenumber nocursorline

" enable backups
set backupdir=~/.vim/backup
set backup

" move tmp files out of repos
set directory=~/.vim/tmp
