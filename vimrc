syntax off
nohlsearch
set ts=2
set expandtab
set sw=2
set keywordprg=perldoc\ -f
" colorscheme koehler
" set nu

autocmd BufNewFile  *.pl      0r ~/.vim/templates/pl.template

set backup
execute "set backupext=_" . strftime("%Y%m%d_%H%M%S~")
