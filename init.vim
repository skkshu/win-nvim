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
no X ZZ
ino <c-j> <ESC>o
