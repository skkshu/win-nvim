"===
"=== Settings
"===
" set background=dark " default: dark. btw, light is terrible.
set fileencodings=utf8,cp936,gb18030,big5

" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h

set nocompatible " with `vi`, vimwiki required
filetype plugin on " vimwiki required

set mouse=a
set clipboard+=unnamedplus
let &t_ut=''
set autochdir

set pyx=3 "pythonx

" ===
" === Editor behavior
" ===
" set colorcolumn=80

set updatetime=300
" 1. milliseconds swap files will be written to the disk
" 2. cursorhold
" 3. <plug>vim-gitgutter

set number
set relativenumber
set cursorline
set autoindent
set list
set listchars=tab:\┆\ ,trail:▫
"|
" set listchars=space:·,tab:│\ ,eol:¬

set autoread

set scrolloff=5
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set indentexpr=
set foldmethod=indent
" set foldmethod=marker
set foldlevel=99
set foldenable
set formatoptions-=tc
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c

" set ttyfast "should make scrolling faster
set lazyredraw "same as above

set visualbell " instead of beeping


" store the edit history even you quit
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif


" when you enter a file, your cursor will jump to the place you edit last time.
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" ===
" === Terminal Behaviors
" ===
set termguicolors "use true color in the terminal
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'
