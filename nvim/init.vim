set nu ts=4 sw=4 et
set wildmode=list
set smartindent
hi Normal guibg=NONE ctermbg=NONE
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
set relativenumber
syntax on

"let g:coc_snippet_next = '<c-l>'
"let g:coc_snippet_prev = '<c-h>'
"inoremap <silent><expr> <c-j> coc#util#has_float() ? <SID>coc_float_scroll(1) : "\<c-j>"
"inoremap <silent><expr> <c-k> coc#util#has_float() ? <SID>coc_float_scroll(-1) : "\<c-k>"
"vnoremap <silent><expr> <c-j> coc#util#has_float() ? <SID>coc_float_scroll(1) : "\<c-j>"
"vnoremap <silent><expr> <c-k> coc#util#has_float() ? <SID>coc_float_scroll(-1) : "\<c-k>"

nnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-j>"
nnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-k>"
inoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-j>"
vnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-k>"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

call vundle#end()            " required
filetype plugin indent on    " required
colorscheme gruvbox
set termguicolors

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
