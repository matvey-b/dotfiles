set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YuoCompleteMe - autocompleter for many langs.
" WARNING: For properly working need manualy compile ycm_core library. Watch full
" installation guide on project github.
Plugin 'Valloric/YouCompleteMe'

" Syntax checking
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

" Color schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

"Plugin 'davidhalter/jedi-vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

" File Browsing
Plugin 'scrooloose/nerdtree'

" Supe Searching
Plugin 'kien/ctrlp.vim'

 " All of your Plugins must be added before the following line
call vundle#end()            " required for vundle
filetype plugin indent on    " required for vundle
" To ignore plugin indent changes, instead use:
"filetype plugin on


" Put your non-Plugin stuff after this line

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Remap split navigations keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
"
"
" Enable folding
set foldmethod=indent
set foldlevel=99
"
"
" Enable folding with the spacebar
nnoremap <space> za
"
"
" Docstrings preview for python SimpylFold plugin
let g:SimpylFold_docstring_preview=1
"
"
" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif
"
"
" PEP8 python indentation
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

"
"TODO: Its not WORK!!! Flagging Unnecessary Whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"
" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif
"
"
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
"
"
" Set utf-8 encoding
set encoding=utf-8
"
" Force use python2 for youcomplete
let g:ycm_server_python_interpreter='python'
"
"
"Support virtualenv for YouCompleteMe
"NOTE: Not work... Needs fix it.
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF
"
"Highlighting for python
let python_highlight_all=1
if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif

" Hotkey for change bg mode
" call togglebg#map("<F5>")
"
"
set nu " Enable line numbering

set t_Co=256 " Enable 256 color mode. Not shure for thats is needed..

" Enable powerline installed with 'pip3 install powerline-status'
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set laststatus=2 "Always show powerline pane
set showtabline=2 "Always show tabline
set noshowmode "Hide the default mode text line
set clipboard=unnamed
