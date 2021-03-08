" @ COLOR Themes
let g:github_colors_soft=1
let g:github_colors_block_diffmark = 0
let g:one_allow_italics = 1
try
    " colorscheme default
    " colorscheme ayu
    " colorscheme J
    " colorscheme monochrome
    " colorscheme distinguished
    " colorscheme jellybeans
    " colorscheme hybrid
    " colorscheme solarized
    " colorscheme gruvbox
    " colorscheme darktango
    " colorscheme hybrid-light
    " colorscheme badwolf
    " colorscheme mirodark
    " colorscheme codeschool
    " colorscheme github
    " colorscheme onedark
    " colorscheme one
    " colorscheme seoul256
    " colorscheme seoul256-light
    if has('gui')
      colorscheme onedark
    else
      if $COLORTERM == 'truecolor'
        set termguicolors
        #colorscheme japanesque
        colorscheme snazzy
      else
        let g:solarized_termtrans = 1
        set term=xterm
        set t_Co=256
        colorscheme solarized
      endif
    endif
catch

endtry
