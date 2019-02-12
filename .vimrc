" 2017-04-07
" @ Source
" - Basic
for f in split(glob('$HOME/.aix/*.vim'), '\n')
  exe 'source' f
endfor

" nginx path syntax highlight
autocmd BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,*_ngx.conf set filetype=nginx | syntax on
