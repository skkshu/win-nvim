"Optional, but maybe fancy

" use <C-c> to use calculator
" inoremap <C-c> <C-O>yiW<End>=<C-R>=<C-R>0<CR>=

" %%a
" inoremap <C-a> <ESC>%%a

" set writedelay=3

" ===
" === Other useful stuff
" ===
" \p to show the current buffer file path
" nnoremap \p 1<C-G>

" Move the next character to the end of the line with ctrl+9
" inoremap <C-u> <ESC>lx$p

" Call figlet
"noremap tx :r !figlet

" convert Space to Tab
"nnoremap <LEADER>tt :%s/    /\t/g
"vnoremap <LEADER>tt :s/    /\t/g

" Adjacent duplicate words
" noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Folding
" noremap <silent> <LEADER>o za

" find and replace
noremap \s :%s//g<left><left>

"noremap <LEADER>- :lN<CR>
"noremap <LEADER>= :lne<CR>
