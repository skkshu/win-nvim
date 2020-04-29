set textwidth=0 "default
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

"==
"== Settings by filetype
"==

" st: shiftwidth
" et: expandtab --> tab->whitespace
" tw: textwidth ts: textwidth

" au FileType mail setlocal sw=2 sts=2 textwidth=0 wrapmargin=0 wrap linebreak nolist "mutt
" au FileType vimwiki  setlocal tabstop=2 shiftwidth=2 expandtab
au FileType javascript setlocal tabstop=2 shiftwidth=2 sts=2 expandtab
au FileType json       setlocal tabstop=2 shiftwidth=2 expandtab
au FileType typescript setlocal tabstop=2 shiftwidth=2 expandtab
au FileType markdown   setlocal tabstop=2 shiftwidth=2 expandtab
au FileType text       setlocal tabstop=2 shiftwidth=2 expandtab
au FileType html       setlocal tabstop=2 shiftwidth=2 sts=2 expandtab
au FileType yaml       setlocal tabstop=2 shiftwidth=2 expandtab
au Filetype css        setlocal tabstop=2 shiftwidth=2 sts=2
au Filetype c          setlocal tabstop=4 shiftwidth=4 sts=4 textwidth=4 noexpandtab

" autocmd BufRead,BufNewFile *.c setlocal tabstop=4 shiftwidth=4 softtabstop=4
