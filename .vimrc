set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
"set tabstop=4
set relativenumber
set laststatus=2
filetype on
set nu
set list

call plug#begin('~/.vim/plugged')

if has('mac')
      Plug 'junegunn/vim-xmark'
endif


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Temas
Plug 'morhetz/gruvbox'


"IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"

let mapleader=" "
let NERDTreeQuitOnOpen=1


nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt : NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
