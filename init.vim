if empty(glob('~/.config/nvim/plugged/'))
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source ~/.config/nvim/fixed.vim
source ~/.config/nvim/optional.vim
source ~/.config/nvim/fomatting.vim
source ~/.config/nvim/split-tab.vim
source ~/.config/nvim/md.vim
source ~/.config/nvim/_machine_specific_default.vim

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

" ===
" === Necessary Commands to Execute
" ===
exec "nohlsearch"
