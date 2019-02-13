" ========================= Aix Plug Manager =========================
" Vim-Plug update Manager
" * Expert Vundle Plugin Manager
filetype off

" # Plugins Beginning
call plug#begin('~/.vim/bundle/')

for f in split(glob('$HOME/.aix/plug/*.vim'), '\n')
  exe 'source' f
endfor

" Plug 'https://gameteam360@bitbucket.org/gameteam360/pylon_ide.git'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }


" 用 editorconfig 统一托管缩进格式，所以不需要对 Vim 单独配置
Plug 'editorconfig/editorconfig-vim'

" comment
Plug 'tomtom/tcomment_vim'
" tcommment_vim
" 代码注释
noremap  <Leader>x :TComment<CR>
noremap  <Leader>X :TCommentRight<CR>
xnoremap <Leader>x :TCommentMaybeInline<CR>
noremap  <Leader>C :TCommentMaybeInline<CR>
noremap  <Leader>c :TCommentBlock<CR>
xnoremap <Leader>c :TCommentBlock<CR>

Plug 'vim-scripts/bufexplorer.zip'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/DoxygenToolkit.vim'
" DoxygenToolkit.vim
" 生成Doxygen风格的文档注释
noremap <Leader>dc <Esc>:Dox<CR>
noremap <Leader>da <Esc>:DoxAuthor<CR>
" noremap <Leader>dd <Esc>:DoxUndoc<CR>

"snipmate + snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
" php snippets
Plug 'chrisyue/my-snips', { 'for': 'php' }
" python snippets
Plug 'SirVer/ultisnips', { 'for': 'python' }
" react snippets
" Plug 'letientai299/vim-react-snippets', { 'branch': 'es6' }

Plug 'ervandew/supertab'
" 避免和supertab冲突
let g:SuperTabDefaultCompletionType = "context"
" 自动补全引号，括号等
Plug 'ervandew/matchem'


" Align
Plug 'junegunn/vim-easy-align'
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)


Plug 'w0rp/ale'
" 最常用列表 Most Recently Used
" Plug 'yegappan/mru'

" rename[!] {newname}
Plug 'danro/rename.vim'

" 记录undo历史
Plug 'simnalamburt/vim-mundo'

" MacVim 'n use fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'tweekmonster/fzf-filemru'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'

" @ Plugin --- [ Code Sreach ]
Plug 'rking/ag.vim'
Plug 'brooth/far.vim'
Plug 'rhysd/clever-f.vim'

" @ Plugin --- [ View ]
" Plug 'terryma/vim-smooth-scroll'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
Plug 'kana/vim-operator-user'
Plug 'osyo-manga/vim-anzu'
Plug 'haya14busa/vim-operator-flashy'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'haya14busa/is.vim'

" @ Plugin --- [ Code Complete Unity ]
" Plug 'Valloric/YouCompleteMe'
Plug 'mattn/emmet-vim'
Plug 'Shougo/vimproc', { 'do': 'make' }
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  " vim8兼容性不好，需要装pynvim pip3 install pynvim
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/deol.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'zchee/deoplete-zsh'
Plug 'carlitux/deoplete-ternjs', { 'do': 'yarn global upgrade tern' }
Plug 'wokalski/autocomplete-flow'

" @ Plugin --- [ VC Plug ]
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-markdown'

" Git all famliy
" For SVN status
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/vim-diff-enhanced'
" Plug 'chrisbra/changesPlugin'

" @ Plugin --- [ Syntax ]
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }
Plug 'chr4/nginx.vim'
Plug 'kh3phr3n/python-syntax', { 'for': 'python' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'groenewege/vim-less'
Plug 'lepture/vim-velocity'
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'jason0x43/vim-js-indent'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Quramy/tsuquyomi'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
" Plug 'neoclide/vim-jsx-improve'
Plug 'othree/xml.vim'
Plug 'othree/html5.vim'
Plug 'ap/vim-css-color'
Plug 'elzr/vim-json'
Plug 'bcicen/vim-jfmt' " brew install jq
Plug 'plasticboy/vim-markdown'
" Plug 'Yggdroot/indentLine'
" Plug 'jeaye/color_coded'

" @ Plugin --- [ Code Format ]
Plug 'godlygeek/tabular'
Plug 'wellle/targets.vim'
Plug 't9md/vim-quickhl'
Plug 'kshenoy/vim-signature'
Plug 'Chiel92/vim-autoformat'
Plug 'majutsushi/tagbar'
Plug 'Valloric/ListToggle'
Plug 'Valloric/MatchTagAlways'
Plug 'pbrisbin/vim-mkdir'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }

Plug 'michaeljsmith/vim-indent-object'
Plug 'arecarn/vim-fold-cycle'
Plug 'pseewald/vim-anyfold'
Plug 'ConradIrwin/vim-bracketed-paste'
" Plug 'kopischke/vim-stay'
" Plug 'Konfekt/FastFold'

" @ Plugin --- [ TextObject ]
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire' " ae, ie
Plug 'kana/vim-textobj-line'

" @ Plugin --- [ ColorScheme ]

Plug 'DemonCloud/J'
" Plug 'morhetz/gruvbox'
" Plug 'ayu-theme/ayu-vim'

" Plug 'gregsexton/gitv'
" Plug 'bagrat/vim-workspace'
" Plug 'ryanoasis/vim-devicons'
Plug 'heavenshell/vim-jsdoc'
Plug 'rizzatti/dash.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'simeji/winresizer'
Plug 'ntpeters/vim-better-whitespace'
Plug 'MarcWeber/vim-addon-mw-utils'
if !exists("g:gui_oni")
" Plug 'ton/vim-bufsurf'
Plug 'ap/vim-buftabline'
endif
" Plug 'ryanoasis/vim-devicons'

" ---- Plug List Complete ----
call plug#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on
" ========================= Plug Setup End =========================
