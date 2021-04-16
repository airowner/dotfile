Plug 'preservim/nerdtree'
" Plug 'leiming/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'unkiwii/vim-nerdtree-sync'

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" 防止其他buffer替换NERDTree
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

let g:vj_nerdtree_compatible = 1
" Scroll from source
noremap <Leader>sf <Esc>:NERDTreeTabsFind<CR>
let g:NERDTreeRespectWildIgnore=1
" NerdTree没有箭头
let g:NERDTreeDirArrows = 0
" 隐藏帮助说明和书签
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
