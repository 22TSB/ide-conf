" Nav config
set number
set relativenumber
set termguicolors

set scrolloff=8

filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent 

syntax on

" Plugins
" call plug#begin()
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" call plug#end()

" Colors
" set termguicolors     " enable true colors support
" let ayucolor="dark"   " for dark version of theme
" colorscheme sorbet 

" Our remaps
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <C-l> :noh<CR><C-l>
nnoremap <leader>p o<esc>Pk<CR>
vnoremap <leader>y "+y
