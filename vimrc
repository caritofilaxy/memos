set expandtab
" set textwidth=120
" set tabstop=8
set ts=2
" set softtabstop=4
" set shiftwidth=4
set sw=2
set autoindent
syntax off
nohlsearch

" delays
" mapping
set timeoutlen=250
" keycode
set ttimeoulen=0

" swap : and ;
" nnoremap ; :
" nnoremap : ;
imap jj <ESC>
nmap 33 i#<ESC>

" highlight 80th column where string exceed it
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" make tabs and trailing spaces visible
" we use expandtab so there will be no tabs in any files
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

set keywordprg=perldoc\ -f

" Use template for new perl file
autocmd BufNewFile  *.pl      0r ~/.vim/templates/pl.template
autocmd BufNewFile  *.html    0r ~/.vim/templates/html.template

set backup


