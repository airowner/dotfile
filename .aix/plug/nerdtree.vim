Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'unkiwii/vim-nerdtree-sync'

" ColorFul NERDTree Settings
nnoremap <silent><F2>    : NERDTreeToggle<CR>
nnoremap <silent><F5>    : NERDTreeRefreshRoot<CR>
nnoremap <silent><F7>    : TagbarToggle<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Scroll from source
noremap <Leader>sf <Esc>:NERDTreeFind<CR>
let g:NERDTreeRespectWildIgnore=1
" NerdTree没有箭头
let g:NERDTreeDirArrows = 0
" 隐藏帮助说明和书签
let NERDTreeMinimalUI = 1
"let g:NERDTreeDirArrowExpandable = '▷'
"let g:NERDTreeDirArrowCollapsible = '▼'
