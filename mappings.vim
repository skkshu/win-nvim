"===
"=== Mappings
"===

let mapleader=" " " <LEADER> --> <SPACE>

noremap <silent> u k
noremap <silent> n h
noremap <silent> e j
noremap <silent> i l

noremap <silent> U 5k
noremap <silent> E 5j

noremap <silent> N 0
noremap <silent> I 78l

noremap W 5w
noremap B 5b

noremap h nzz
noremap H Nzz

noremap ; :

noremap q :q<CR>
noremap Q :q!<CR>


" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Undo operation
noremap l u
noremap <C-l> U

" Insert
noremap k i
noremap K I

" toggle case (instead of ~)
noremap ` ~

" Ctrl + U or E will move up/down the view port without moving the cursor
" noremap <C-U> 5<C-y>
" noremap <C-E> 5<C-e>

" make <nno>Y more logical, but not vi-compatible
nnoremap Y y$
" noremap y; ^v$<left>y

" Copy to system clipboard "I do need that
" vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>"-c4l
noremap \\ <Esc>a<++><Esc>

noremap <C-g> 1<C-g>


" Compile function
noremap <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!chromium % &"
	elseif &filetype == 'xhtml'
		silent! exec "!chromium % &"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run %
	endif
endfunc
