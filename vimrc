set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle required! 
Bundle 'gmarik/vundle'

" Essential Plugins
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'jcf/vim-latex'
Bundle 'vim-scripts/c.vim'
Bundle 'vim-scripts/a.vim'
Bundle 'shor-ty/vimExtensionOF'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/powerline'
Bundle 'plasticboy/vim-markdown'

" Snipmate essentials
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'


" Color Schemes
Bundle 'endel/vim-github-colorscheme'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
  
" Indentation
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set number
set showcmd
set showmatch

" Highlight search
let mapleader = ","
map <LEADER>t :CtrlP<Enter>
map <LEADER>s :A<Enter>

set hlsearch
" Turn off that stupid highlight search
nmap <silent> <LEADER>n :nohls<CR>

"set autoindent
filetype plugin indent on
syntax on

" Enable vertical scrolling in a wrapped line by k and j
noremap k gk
noremap j gj

" -----------------------
" Statusline
" -----------------------
set laststatus=1
set ruler
set showcmd

" Have 3 lines offset when scrolling at the top or bottom of the screen
set scrolloff=3

set tw=80
set cursorline
set linebreak

" Enable syntax completion from command line
set wildmenu

" Reload files if changed on disk
set autoread

" Ignore patterns in files
set wildignore+=*.o,*.git,lnInclude,*GccDP*,.svn,.swp,.dep

" MARKDOWN SETTINGS
" Disable folding for markdown
let g:vim_markdown_folding_disabled=1
au BufRead,BufNewFile *.md set filetype=markdown

" LATEX SETTINGS
au BufRead,BufNewFile *.tikz set filetype=tex

set t_Co=256 vb
set background=dark

if has("gui_running")
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
	set noerrorbells visualbell t_vb=
	autocmd GUIEnter * set visualbell t_vb=
	set guifont=Inconsolata\ 10
    colorscheme github
else
    colorscheme molokai
    "colorscheme solarized
endif

autocmd FileType openfoam colorscheme github
