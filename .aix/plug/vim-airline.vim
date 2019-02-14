Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#branch#enabled = 0
let g:airline#parts#ffenc#skip_expected_string = 'utf-8[unix]'
" let g:airline_theme = "github"
" let g:airline_theme = "one"
let g:airline_theme = "onedark"
" let g:airline_theme = "zenburn"
" let g:airline_theme = "ayu_mirage"


" use Aix.font
if(has("gui_running"))
  let g:airline_left_sep='◣'
  let g:airline_right_sep='◥'
else
  let g:airline_left_sep=''
  let g:airline_right_sep=''
endif
