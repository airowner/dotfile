"  --------------  Aix Vim --------------
"  VERSION 1.0


" Not complete with Vi Mode
set nocompatible

set regexpengine=1

" History
set history=9888

if !exists($HOME)
  let $HOME=expand('~')
endif

if has("vms")
  set nobackup
else
  set backup
endif

" 备份文件位置
if !filereadable(expand('$HOME/backup/vim/'))
  silent execute ":!mkdir -p ~/backup/vim"
endif
set backupdir=$HOME/backup/vim
set backupext=.bak

