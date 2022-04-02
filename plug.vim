" ===
" === Install Plugins with Vim-Plug
" ===

call plug#begin('~/.config/nvim/plugged')
" Plug '<++>'
Plug 'lilydjwg/fcitx.vim'
" Plug 'majutsushi/tagbar' " Ctags <F6>
Plug 'skkshu/vim-copyright' " orig: nine2
Plug 'lambdalisue/suda.vim'
" Plug 'vim-scripts/fcitx.vim'
" Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/vim-peekaboo'
" Plug 'makerj/vim-pdf'
"Plug 'theniceboy/vim-leader-mapper'

" Pretty Dress
" Plug 'ajmwagar/vim-deus'
Plug 'connorholyday/vim-snazzy'
Plug 'vim-airline/vim-airline'

" Genreal Highlighter
" Plug 'jaxbot/semantic-highlight.vim', { 'on': 'SemanticHighlightToggle' }
"Plug 'chrisbra/Colorizer' " Show colors with :ColorHighlight

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf.vim'

" Taglist
" Plug 'liuchengxu/vista.vim'

" Error checking
"Plug 'dense-analysis/ale'
"Plug 'fszymanski/fzf-quickfix', {'on': 'Quickfix'}

" Auto Complete
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Undo Tree
" Plug 'mbbill/undotree'

" Git
"Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
"Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }
"Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

" Tex
"Plug 'lervag/vimtex'

" HTML, CSS, JavaScript, PHP, JSON, etc.
" Plug 'elzr/vim-json'

" Python
"Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
"Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
"Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
"Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
"Plug 'tweekmonster/braceless.vim'
Plug 'frazrepo/vim-rainbow'
", { 'for' :['python', 'c', 'vim-plug', 'cpp', 'objc', 'objcpp'], }

" Markdown
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'theniceboy/bullets.vim'
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }

" Editor Enhancement
"Plug 'Raimondi/delimitMate'
"Plug 'cohama/lexima.vim'
"Plug 'terryma/vim-multiple-cursors'
Plug 'tyru/caw.vim' "comment
Plug 'AndrewRadev/switch.vim' " `gs` to switch
Plug 'tpope/vim-surround'
"Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp
"Plug 'junegunn/vim-after-object' " da= to delete what's after =
Plug 'junegunn/vim-easy-align' " gaip= to align the = in paragraph
Plug 'tpope/vim-capslock'	" Ctrl+L (insert) to toggle capslock
"Plug 'easymotion/vim-easymotion'
Plug 'Konfekt/FastFold'

" Input Method Autoswitch
"Plug 'rlue/vim-barbaric'

" Formatter
"Plug 'Chiel92/vim-autoformat'

" For general writing
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }

" Bookmarks
Plug 'kshenoy/vim-signature'

" Mini Vim-APP
"Plug 'jceb/vim-orgmode'
Plug 'mhinz/vim-startify'
" Plug 'mhinz/vim-startify', { 'on': 'Startify' }

" Other visual enhancement
Plug 'ryanoasis/vim-devicons'

call plug#end()

" ===================== Start of Plugin Settings =====================

" " ==
" " == NERDTree-git
" " ==
" let g:NERDTreeIndicatorMapCustom = {
"			\ "Modified"	: "✹",
"			\ "Staged"		: "✚",
"			\ "Untracked" : "✭",
"			\ "Renamed"	 : "➜",
"			\ "Unmerged"	: "═",
"			\ "Deleted"	 : "✖",
"			\ "Dirty"		 : "✗",
"			\ "Clean"		 : "✔︎",
"			\ "Unknown"	 : "?"
"			\ }


" ===
" === coc
" ===
" fix the most annoying bug that coc has
silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
let g:coc_global_extensions = ['coc-json', 'coc-yank', 'coc-lists', 'coc-yaml', 'coc-dictionary', 'coc-tag', 'coc-word', 'coc-emoji', 'coc-syntax', 'coc-pairs']
" let g:coc_global_extensions = ['coc-json', 'coc-yank', 'coc-lists', 'coc-yaml', 'coc-dictionary', 'coc-tag', 'coc-word', 'coc-omni', 'coc-emoji', 'coc-syntax', 'coc-ultisnips', 'coc-pairs']
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]	=~ '\s'
endfunction
inoremap <silent><expr> <Tab>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<Tab>" :
			\ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <c-o> coc#refresh()

" Useful commands
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

" show documentation in preview window.
nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" === coc-explorer
" nmap <space>e :CocCommand explorer<CR>

" List all presets
" nmap <space>el :CocList explPresets


" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = '127.0.0.1'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
			\ 'mkit': {},
			\ 'katex': {},
			\ 'uml': {},
			\ 'maid': {},
			\ 'disable_sync_scroll': 0,
			\ 'sync_scroll_type': 'middle',
			\ 'hide_yaml_meta': 1
			\ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = '2020'
let g:mkdp_page_title = '「${name}」'


" ===
" === Python-syntax
" ===
"let g:python_highlight_all = 1
" let g:python_slow_sync = 0


" ===
" === vim-table-mode
" ===
noremap <LEADER>tm :TableModeToggle<CR>
"let g:table_mode_disable_mappings = 1
let g:table_mode_cell_text_object_i_map = 'k<Bar>'

" ===
" === vim-gitgutter
" ===

" 0 to Turn off vim-gitgutter by default
let g:gitgutter_enabled = 1

set signcolumn=auto " yes
let g:gitgutter_max_signs = 500 " Default: 500
let g:gitgutter_map_keys = 0 " Disable all key mappings
highlight GitGutterAdd    guifg=#009900 guibg=NONE ctermfg=2 ctermbg=NONE
highlight GitGutterChange guifg=#bbbb00 guibg=NONE ctermfg=3 ctermbg=NONE
highlight GitGutterDelete guifg=#ff2222 guibg=NONE ctermfg=1 ctermbg=NONE
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = 'x'
nmap <c-[> <Plug>(GitGutterPrevHunk)
nmap <c-]> <Plug>(GitGutterNextHunk)
nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)
" let g:gitgutter_preview_win_floating = 1
" let g:gitgutter_use_location_list = 0 " 1: load all hunks in the current buffer

let g:gitgutter_highlight_lines = 0
let g:gitgutter_highlight_linenrs = 1
nmap ght :GitGutterToggle<CR>

" gitgutter statusline [a,m,r]
function! GitStatus()
 let [a,m,r] = GitGutterGetHunkSummary()
 return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

" ===
" === vim-signature
" ===
let g:SignatureMap = {
			\ 'Leader':"m",
			\ 'PlaceNextMark':"m,",
			\ 'ToggleMarkAtLine':"m.",
			\ 'PurgeMarksAtLine':"dm",
			\ 'DeleteMark':"mu",
			\ 'PurgeMarks':"",
			\ 'PurgeMarkers':"",
			\ 'GotoNextLineAlpha':"m<LEADER>",
			\ 'GotoPrevLineAlpha':"",
			\ 'GotoNextSpotAlpha':"m<LEADER>",
			\ 'GotoPrevSpotAlpha':"",
			\ 'GotoNextLineByPos':"",
			\ 'GotoPrevLineByPos':"",
			\ 'GotoNextSpotByPos':"",
			\ 'GotoPrevSpotByPos':"",
			\ 'GotoNextMarker':"",
			\ 'GotoPrevMarker':"",
			\ 'GotoNextMarkerAny':"",
			\ 'GotoPrevMarkerAny':"",
			\ 'ListLocalMarks':"m/",
			\ 'ListLocalMarkers':"m?"
			\ }


" ===
" === Goyo
" ===
map <leader>gy :Goyo<CR>

" " ===
" " === Undotree
" " ===
" noremap L :UndotreeToggle<CR>
" let g:undotree_DiffAutoOpen = 1
" let g:undotree_SetFocusWhenToggle = 1
" let g:undotree_ShortIndicators = 1
" let g:undotree_WindowLayout = 2
" let g:undotree_DiffpanelHeight = 8
" let g:undotree_SplitWidth = 24
" function g:Undotree_CustomMap()
" 	nmap <buffer> u <plug>UndotreeNextState
" 	nmap <buffer> e <plug>UndotreePreviousState
" 	nmap <buffer> U 5<plug>UndotreeNextState
" 	nmap <buffer> E 5<plug>UndotreePreviousState
" endfunc

" ===
" === suda.vim
" ===
let g:suda#prefix = ['suda://', 'sudo://', '_://']
let g:suda_smart_edit = 1

" ===
" === vim-rainbow
" ===
let g:rainbow_active = 1
" au FileType c,cpp,objc,objcpp,py call rainbow#load()

let g:rainbow_guifgs = ['cyan', 'magenta', 'red', 'white']
let g:rainbow_ctermfgs = ['cyan', 'magenta', 'red', 'white']


"===
"=== skkshu/vim-copyright " orig: nine2
"===
let g:file_copyright_name = "Joey Lee"
let g:file_copyright_email = "skkshu@gmail.com"

let g:file_copyright_auto_filetypes = ['sh', 'plx', 'pl', 'pm', 'py', 'python', 'h', 'hpp', 'c', 'cpp', 'java', 'ruby', 'rb', 'rake', 'uml', 'plantuml']




" noremap <F4> :TagbarToggle<CR><C-w><C-w>
nnoremap <Leader>sm :SemanticHighlightToggle<cr>

" ===
" === FZF
" ===
set rtp+=/usr/local/opt/fzf
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
noremap <C-p> :Files<CR>
noremap <C-f> :Rg<CR>
" noremap <C-h> :History<CR>
" noremap <C-t> :BTags<CR>
" noremap <C-l> :Lines<CR>
" noremap <C-w> :Buffers<CR>
noremap <leader>; :History:<CR>

let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
\ }))

noremap <c-d> :BD<CR>

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }



" ===
" === vim-Snazzy
" ===
let  yellow   =  '#FFD700'
let g:SnazzyTransparent = 0
let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }

"===
"=== junegunn/vim-easy-align
"===
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" ===
" === Vista.vim
" ===
" noremap T :silent! Vista finder coc<CR>
" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
" let g:vista_default_executive = 'ctags'
" let g:vista_fzf_preview = ['right:50%']
" let g:vista#renderer#enable_icon = 1
" let g:vista#renderer#icons = {
"\   "function": "\uf794",
"\   "variable": "\uf71b",
"\  }
" function! NearestMethodOrFunction() abort
" 	return get(b:, 'vista_nearest_method_or_function', '')
" endfunction
" set statusline+=%{NearestMethodOrFunction()}
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


" ===
" === fastfold
" ===
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'ze', 'zu']
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1

" ===
" === NERDTree
" ===
noremap tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl        = ""
let NERDTreeMapUpdir           = "N"
let NERDTreeMapUpdirKeepOpen   = "h"
let NERDTreeMapOpenSplit       = ""
let NERDTreeMapOpenVSplit      = "I"
let NERDTreeMapActivateNode    = "i"
let NERDTreeMapOpenInTab       = "o"
let NERDTreeMapOpenInTabSilent = "O"
let NERDTreeMapPreview         = ""
let NERDTreeMapCloseDir        = "n"
let NERDTreeMapChangeRoot      = "l"
let NERDTreeMapMenu            = ","
let NERDTreeMapToggleHidden    = "zh"



" ===
" === Bullets.vim
" ===
"let g:bullets_set_mappings = 0
let g:bullets_enabled_file_types = [
			\ 'markdown',
			\ 'text',
			\ 'gitcommit',
			\ 'scratch'
			\]

" " ===
" " === Ultisnips
" " ===
" let g:tex_flavor = "latex"
" inoremap <c-n> <nop>
" let g:UltiSnipsExpandTrigger="<c-e>"
" let g:UltiSnipsJumpForwardTrigger="<c-e>"
" let g:UltiSnipsJumpBackwardTrigger="<c-n>"
" let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/', $HOME.'/.config/nvim/plugged/vim-snippets/UltiSnips/']
" silent! au BufEnter,BufRead,BufNewFile * silent! unmap <c-r>
" " Solve extreme insert-mode lag on macOS (by disabling autotrigger)
" augroup ultisnips_no_auto_expansion
"     au!
"     au VimEnter * au! UltiSnips_AutoTrigger
" augroup END
" 

" ===================== End of Plugin Settings =====================
