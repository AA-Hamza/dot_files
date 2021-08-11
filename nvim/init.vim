set nu ts=4 sw=4 et
set wildmode=list
set smartindent
hi Normal guibg=NONE ctermbg=NONE
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
set relativenumber
syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

call vundle#end()            " required
filetype plugin indent on    " required
colorscheme gruvbox
set termguicolors

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
