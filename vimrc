set textwidth=80
set wrapmargin=2
set tags=./.tags,.tags,./tags,tags
set list
set showmatch
set matchtime=3
set wildmenu
set wildmode=list:full
set nocompatible
set ruler
set autoindent
set smartindent
set tabstop=2
set sw=2
set ff=unix
set expandtab

let g:ctrlp_cmd = 'CtrlPMixed'
let g:Tex_ViewRule_pdf = 'Preview'

" one tab left
nnoremap <left> gT
" one tab rigth
nnoremap <right> gt
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <C-t> :CtrlPTag<cr>
nnoremap <leader>b :TagbarToggle<cr>

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

filetype plugin indent on

syntax on

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " don't expand tabs in javascript
  autocmd FileType javascript            set ai si sw=4 sts=4 ts=4 et
  autocmd FileType json                  set ai si sw=4 sts=4 ts=4 et
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml,scala set ai si sw=2 sts=2 ts=2 et
  autocmd FileType go                    set ai si sw=4 sts=4 ts=4 noet nolist
  autocmd FileType markdown              set ai si sw=4 sts=4 ts=4 et
  autocmd BufRead,BufNewFile             */nginx/*.conf set ft=nginx
augroup END

call pathogen#infect()

set guifont=Menlo\ Regular:h15
