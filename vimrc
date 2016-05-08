" Author : Pawan Pawar
" Date : 02/12/2014
" Location : Denver colorado USA
" Age : 31 
" Using Vundle now

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My bundles
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-ruby/vim-ruby'
Bundle 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'mattn/emmet-vim'
Plugin 'wikitopian/hardmode.git'
Plugin 'tpope/vim-surround.git'
Plugin 'ervandew/supertab'
"Plugin 'wincent/command-t'

" \ is the leader character
let mapleader=","

set laststatus=2

set nocompatible
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"set history		" keep 50 lines of command line history
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching
set hlsearch        " highlight search
set ignorecase 		" ignore case in the search
set smartcase		" don't ignore case if any char in capital in search

" Line movement using jk
nmap j gj
nmap k gk

" Disable the arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Go spartan and ban the hjkl keys too
"noremap h <nop>
"noremap j <nop>
"noremap k <nop>
"noremap l <nop>

syntax on
syntax enable
set tabstop=4 		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set expandtab		" tabs are spaces
set number 		    " show line numbers
set cursorline		" hightligh current line

set wildmenu        " visual autocomplete commands Pretty Cool Vim feature
set lazyredraw      " redraw only when we need to
set showmatch       " highlight matching [{()}]

"" This section deals with the movement
nnoremap B ^
nnoremap E $
nnoremap ^ <nop>
nnoremap $ <nop>

"" The Leader key to escape from ESC
nnoremap <leader>w :w!<cr>
nnoremap <leader>q :q<cr>
"" Toggle NERDTree
nmap <leader>e :NERDTreeToggle<CR>
"" toggle hightlig
nnoremap <leader><space> :nohlsearch<cr>
filetype plugin on
filetype indent on

nnoremap <leader>cv :e $MYVIMRC<CR> " type ,ev to ecit the vimrc file
"" No annoying sounds on errors
set noerrorbells
set visualbell
set tm=500

"" Turn backup off , causes swp files in git.. which is annoying
set nobackup
set nowb
set noswapfile

"" indenting related settings.. need to explore this
set ai              " set auto indent
set si              " set smart indent
"autocmd VimEnter * NERDTree
"set up 256 colors mode
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
          set t_Co=256
endif

"set colorscheme
set background=dark
colorscheme solarized

"Reload vimrc
nnoremap<leader>r :source $MYVIMRC<CR>

