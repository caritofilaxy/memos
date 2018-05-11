set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
syntax off

" map <F2> iTo whom it may concern, <CR><CR><TAB>
" map <F2> :s#^  #/*#e \| s#$#  */#e <Enter>
" map <F3> :/^\/\*/s#/*##e | /\*\/$/s#*/##e <Enter>

" C comment line
map <F2> :s/^\(.*\)$/\/\* \1 \*\//<CR>
