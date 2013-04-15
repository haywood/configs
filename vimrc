set nocompatible
set ruler
set autoindent
set smartindent
set tabstop=4
set sw=4
set ff=unix
set noswapfile nobackup
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
nnoremap j gj
nnoremap k gk
nnoremap <left> gT
nnoremap <right> gt
vmap Q gq
nmap Q gqap
nnoremap ; :
filetype plugin indent on
syntax on

call pathogen#infect()
