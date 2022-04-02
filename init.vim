if empty(glob('~/.config/nvim/plugged/'))
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


source ~/.config/nvim/mappings.vim
source ~/.config/nvim/settings.vim

source ~/.config/nvim/optional.vim
source ~/.config/nvim/fomatting.vim
source ~/.config/nvim/split-tab.vim
source ~/.config/nvim/md.vim
source ~/.config/nvim/_machine_specific_default.vim
source ~/.config/nvim/open.vim

source ~/.config/nvim/plug.vim
" ===
" === not yet archived
" ===
noremap <F3> :set signcolumn=no<CR>
noremap <F2> :set signcolumn=auto<CR>

" Spelling Check with <space>ss
noremap <LEADER>ss :set spell!<CR>

"color dracula
" color deus
color snazzy
source ~/.config/nvim/hi.vim

" ===
" === Necessary Commands to Execute
" ===
exec "nohlsearch"

inoremap <F4> <nop>
" ino <C-e> <C-n>
" ino <C-u> <C-p>
" ino <C-s> <BS>
" ino <C-n> <C-h>
ino <C-a> <Esc>A
ino <c-z> <esc>ua
" no X ZZ
ino <c-j> <ESC>o
ino <c-c> <esc>cc
noremap <c-z> <nop>
no <BS> :q<CR>
" no <Enter> :w<CR>

"===
"=== i_<C-s> // this feature maybe come from plug: vim-surround
"===
" curly braces
ino <c-s>c {}<Left>
ino <c-s><c-c> {}<Left>
" angle brackets
ino <c-s>a <><Left>
ino <c-s><c-a> <><Left>
" square brakets
ino <c-s>s []<Left>
ino <c-s><c-s> []<Left>
" brackets
ino <c-s>b ()<Left>
ino <c-s><c-b> ()<Left>
noremap csyn :set syntax=off<cr>

function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv




  " noremap <C-S-A> GA

" CTRL-A CTRL-X, ":h nrformats"
set nrformats=bin,hex,octal
set nrformats+=alpha


noremap <c-u> <nop>
noremap <c-b> <nop>

" ===
" === netrw
" ===
augroup netrw_colemak_fix
    autocmd!
    autocmd filetype netrw call Fix_netrw_maps_for_colemak()
augroup END
function! Fix_netrw_maps_for_colemak()
		noremap <buffer> K 5k
		noremap <buffer> J 5j
		noremap <buffer> l <cr>
endfunction

nno S :w<cr>

" cno date -1r!date<cr>
