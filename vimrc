set textwidth=80
set wrapmargin=2
set nocompatible
set ruler
set autoindent
set smartindent
set tabstop=4
set sw=4
set ff=unix
set expandtab
set noswapfile nobackup
let g:ctrlp_map = '<C-t>'
let g:ctrlp_cmd = 'CtrlPMixed'
nnoremap j gj
nnoremap k gk
nnoremap <left> gT
nnoremap <right> gt
vmap Q gq
nmap Q gqap
filetype plugin indent on
syntax on

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml,scala set ai sw=2 sts=2 ts=2 et
augroup END

call pathogen#infect()
