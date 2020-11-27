"""" Enable Vundle: vim plugin manager

let mapleader = ','

" required before Vundle initialization
set nocompatible        " disable compatibility mode with vi
filetype off            " disable filetype detection (but re-enable later, see below)

" set the runtime path to include Vundle, and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'christianrondeau/vim-base64'
call vundle#end()
filetype plugin indent on    " required

"""" Basic Behavior

"set number              " show line numbers
"set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
"set mouse=a             " enable mouse support (might not work well on Mac OS X)

"set wildmenu            " visual autocomplete for command menu
"set lazyredraw          " redraw screen only when we need to
"set showmatch           " highlight matching parentheses / brackets [{()}]
"set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
"set visualbell          " blink cursor on error, instead of beeping


"""" Key Bindings

" move vertically by visual line (don't skip wrapped lines)
"nmap j gj
"nmap k gk


"""" Vim Appearance

" put colorscheme files in ~/.vim/colors/
"colorscheme badwolf      " good colorschemes: murphy, slate, molokai, badwolf, solarized

" use filetype-based syntax highlighting, ftplugins, and indentation
"syntax enable
"filetype plugin indent on


"""" Tab settings

set tabstop=4           " number of spaces per <TAB>
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " set a <TAB> key-press equal to 4 spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')


"""" Search settings

"set incsearch           " search as characters are entered
"set hlsearch            " highlight matches

" turn off search highlighting with <CR> (carriage-return)
"nnoremap <CR> :nohlsearch<CR><CR>


"""" Miscellaneous settings that might be worth enabling

"set cursorline         " highlight current line
"set background=dark    " configure Vim to use brighter colors
"set autoread           " autoreload the file in Vim if it has been changed outside of Vim


if has("autocmd")
  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType puppet setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType sh setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType jsonnet setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType groovy setlocal ts=4 sts=4 sw=4 expandtab
  autocmd Filetype gitcommit setlocal spell textwidth=72

  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
  " Treat Jenkinsfile files as groovy
  autocmd BufNewFile,BufRead Jenkinsfile setfiletype groovy
endif
