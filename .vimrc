set number
set cursorline
set autoindent
set ts=4
set expandtab
set laststatus=2
set hlsearch
set ruler
set nowrap

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'  " let Vundle manage Vundle, required
Plugin 'dyng/ctrlsf.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()            " required
filetype plugin indent on    " required


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'


" 配色方案
" set background=dark
" colorscheme solarized

" 禁止光标闪烁
set gcr=a:block-blinkon0
