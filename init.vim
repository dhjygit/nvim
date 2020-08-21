" " " " " " " " " " " " " " " " " " " " " " " " " " "
"     __  __     __     ___                         "
"    |  \/  |_   \ \   / (_)_ __ ___  _ __ ___      "
"    | |\/| | | | \ \ / /| | '_ ` _ \| '__/ __|     "
"    | |  | | |_| |\ V / | | | | | | | | | (__      "
"    |_|  |_|\__, | \_/  |_|_| |_| |_|_|  \___|     "
"            |___/                                  "
"                                                   "
" " " " " " " " " " " " " " " " " " " " " " " " " " "

"================================================================="

" ------------------------------------- "
" --- Install plugins automatically --- "
" ------------------------------------- "

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" -------------------------- "
" --- Terminal Behaviors --- "
" -------------------------- "
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N>:exit<cr>
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
noremap TT :set splitbelow<CR>:split<CR>:res -6<CR>:term<CR>

" ----------------------- "
" --- System Settings --- "
" ----------------------- "

set nocompatible
command! W w !sudo tee % > /dev/null
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=en
set termencoding=utf-8
set backspace=eol,start,indent
syntax enable
syntax on
let &t_ut=''
filetype indent on
filetype on
filetype plugin on
set autoread
set clipboard=unnamedplus
"set pastetoggle=<F5>
set autochdir
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab         " when typing <Tab>, use <space> instead
"set noexpandtab
set shiftround        " use multiple of shiftwidth when indenting with '<' and '>'
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set noshowmode
set showcmd
set wildmenu
set ttyfast
set lazyredraw
set shortmess+=c
"set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set visualbell
set updatetime=1000
set virtualedit=block
set ignorecase
set smartcase
set hlsearch
set incsearch
"set cursorcolumn
"set cursorline
"set colorcolumn=100
exec "nohlsearch"
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif
au FileType * set fo-=cro
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"================================================================="

" ------------ "
" -- keymap -- "
" ~~~~~~~~~~~~ "

" -- normal mode -- "
nnoremap Q :q<CR>
nnoremap U ~
nnoremap q; q:
nnoremap S :w<CR>
nnoremap RR :source $MYVIMRC<CR>
nnoremap RE :e<cr>
nnoremap <s-h> <home>
nnoremap <s-l> <end>
nnoremap <s-k> 5k
nnoremap <s-j> 5j
nnoremap <s-w> 5w
nnoremap <s-b> 5b
nnoremap Y y$
nnoremap <space>e :e 
nnoremap <space>/ :!
nnoremap <space>rr :r !
nnoremap sg :r !figlet 
nnoremap s; <end>a:<esc>
nnoremap r; <end>a;<esc>
nnoremap <space>rc :e ~/.config/nvim/init.vim<CR>
"nnoremap <space>rd :!rm ~/.local/share/nvim/swap/*<CR><CR>
nnoremap <space>rd :!rm ~/.config/nvim/tmp/backup/%.swp<cr><cr>

" -- visual mode -- "
vnoremap a' c'<esc>pa'<esc>
vnoremap a" c"<esc>pa"<esc>
vnoremap a< c<<esc>pa><esc>
vnoremap a> c<<esc>pa><esc>
vnoremap a{ c{<esc>pa}<esc>
vnoremap a} c{<esc>pa}<esc>
vnoremap a[ c[<esc>pa]<esc>
vnoremap a] c[<esc>pa]<esc>
vnoremap a( c(<esc>pa)<esc>
vnoremap a) c(<esc>pa)<esc>
vnoremap ab c(<esc>pa)<esc>

" -- insert mode -- "
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-k> <up>
inoremap <c-j> <down>

" -- commandline mode -- "
cnoremap <c-k> <up>
cnoremap <c-j> <down>
cnoremap <c-h> <left>
cnoremap <c-l> <right>

"" -- others -- "
let mapleader=","
map ; :
map ` <nop>
map R <nop>
map s <nop>
map r <nop>
map t <nop>
map . <nop>
noremap < <<
noremap > >>
nnoremap <c-c> zz
inoremap <c-c> <c-o>zz
noremap <space><CR> :nohlsearch<CR>
noremap <space>ss :%s/<C-R>=expand("<cword>")<CR>/
noremap <space>sv :s/<C-R>=expand("<cword>")<CR>/
noremap ss :%s/
noremap sv :s/

" -- split -- "
map sh :vsplit<CR>
map sl :vsplit<CR><c-w>l
map sk :split<CR>
map sj :split<CR><c-w>j

map <space>h <c-w>h
map <space>l <c-w>l
map <space>k <c-w>k
map <space>j <c-w>j
map <space>w <c-w>r

map srv <c-w>t<c-w>H
map srh <c-w>t<c-w>K

map rl :vertical resize +1<CR>
map rh :vertical resize -1<CR>
map rk :res +1<CR>
map rj :res -1<CR>

" -- tab -- "
map tn :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>
map tmh :-tabmove<CR>
map tml :+tabmove<CR>

" -- buffer -- "
map zh :bprevious<CR>
map zl :bnext<CR>
map sb :bd!<CR>


"================================================================="

" --------------- "
" --- Plugins --- "
" --------------- "

call plug#begin('~/.config/nvim/myplugin')

" -- colorscheme -- "
Plug 'connorholyday/vim-snazzy'
Plug 'theniceboy/vim-deus'
Plug '986299679/space-vim-theme'

" -- status line -- "
Plug 'liuchengxu/eleline.vim'
Plug 'bling/vim-bufferline'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

" -- highlight -- "
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }

" -- file navigation -- "
Plug 'scrooloose/nerdtree'

" -- code complete -- "
Plug 'ycm-core/YouCompleteMe'

" -- html css javascript -- "
Plug 'alvan/vim-closetag'
Plug 'Chiel92/vim-autoformat'
Plug 'elzr/vim-json'
Plug 'yuezk/vim-js'
Plug 'ternjs/tern_for_vim'

" -- python -- "
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'dense-analysis/ale'
Plug 'davidhalter/jedi-vim'

" -- convenient tools -- "
Plug 'preservim/nerdcommenter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'szw/vim-maximizer'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'liuchengxu/vim-clap'
Plug 'tpope/vim-capslock'
Plug 'junegunn/vim-after-object'
Plug 'jwarby/antovim'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-abolish'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'yggdroot/indentline'
Plug 'kshenoy/vim-signature'
Plug 'liuchengxu/vista.vim'
Plug 'drmingdrmer/xptemplate'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

call plug#end()

" ------------------------- "
" --- config of plugins --- "
" ------------------------- "

let g:bufferline_modified = '●'
" -- ultisnips -- "
"function! g:UltiSnips_Complete()
"  call UltiSnips#ExpandSnippet()
"  if g:ulti_expand_res == 0
"    if pumvisible()
"      return "\<C-n>"
"    else
"      call UltiSnips#JumpForwards()
"      if g:ulti_jump_forwards_res == 0
"        return "\<TAB>"
"      endif
"    endif
"  endif
"  return ""
"endfunction
"
"function! g:UltiSnips_Reverse()
"  call UltiSnips#JumpBackwards()
"  if g:ulti_jump_backwards_res == 0
"    return "\<C-P>"
"  endif
"
"  return ""
"endfunction
"
"
"if !exists("g:UltiSnipsJumpForwardTrigger")
"  let g:UltiSnipsJumpForwardTrigger = "<tab>"
"endif
"if !exists("g:UltiSnipsJumpBackwardTrigger")
"  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"endif

" -- vista.vim -- "
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" -- xptemplate -- "
nnoremap <c-p> :Clap<cr>

" -- xptemplate -- "
let g:xptemplate_key = '<c-i>'
let g:xptemplate_key_visual = '<c-i>'
let g:xptemplate_key_pum_only = '<s-Tab>'
let g:xptemplate_goback = '<c-i>'
let g:xptemplate_nav_next = '<tab>'
let g:xptemplate_nav_prev = '<s-tab>'

" -- vista -- "
nmap <leader><leader>t :Vista!!<cr>

" -- vim-signature -- "
"autocmd VimEnter * SignatureToggle
let g:SignatureEnabledAtStartup = 0
nnoremap <leader><leader>s :SignatureToggle<cr>
let g:SignatureMap = {
  \ 'Leader'             :  "m",
  \ 'PlaceNextMark'      :  "m,",
  \ 'ToggleMarkAtLine'   :  "m.",
  \ 'PurgeMarksAtLine'   :  "m-",
  \ 'DeleteMark'         :  "dm",
  \ 'PurgeMarks'         :  "m<Space>",
  \ 'PurgeMarkers'       :  "m<BS>",
  \ 'GotoNextLineAlpha'  :  "']",
  \ 'GotoPrevLineAlpha'  :  "'[",
  \ 'GotoNextSpotAlpha'  :  "`]",
  \ 'GotoPrevSpotAlpha'  :  "`[",
  \ 'GotoNextLineByPos'  :  "]'",
  \ 'GotoPrevLineByPos'  :  "['",
  \ 'GotoNextSpotByPos'  :  "]`",
  \ 'GotoPrevSpotByPos'  :  "[`",
  \ 'GotoNextMarker'     :  "]-",
  \ 'GotoPrevMarker'     :  "[-",
  \ 'GotoNextMarkerAny'  :  "]=",
  \ 'GotoPrevMarkerAny'  :  "[=",
  \ 'ListBufferMarks'    :  "m/",
  \ 'ListBufferMarkers'  :  "m?"
  \ }

" -- jedi-vim -- "
let g:jedi#documentation_command = "<leader><leader>h"

" -- indentline -- "
"autocmd VimEnter * IndentLinesToggle
let g:indentLine_enabled = 0
nnoremap <leader><leader>i :IndentLinesToggle<cr>
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_char_list = ['┆']
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" -- vim-autoformat -- "
let g:formatter_yapf_style = 'pep8'

" -- ale -- "
"let g:ale_python_flake8_executable = 'flake8'
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
"au FileType * ALEToggle
let g:ale_enabled = 0
"nmap <Leader>d :ALEDetail<CR>
let g:ale_linters = {
\   'python': ['flake8', 'yapf'],
\   'javascript': ['jshint'],
\}
"let g:ale_linters = {
"\  'python': ['flake8', 'pylint', 'yapf']
"\   'javascript': ['jshint'],
"\   'css': ['stylelint'],
"\   'c++': ['clang'],
"\   'c': ['clang'],
"\}

" -- vim-hexokinase -- "
let g:Hexokinase_highlighters = [
"\ 'foreground',
"\ 'foregroundfull'
"\ 'virtual',
"\ 'sign_column',
"\ 'background',
\ 'backgroundfull'
\ ]

" -- splitjoin -- "
let g:splitjoin_split_mapping = 'gj'
let g:splitjoin_join_mapping  = 'gk'

" -- vim-visual-multi -- "
nmap sa <c-n>:MtaJumpToOtherTag<cr>2<right><c-n>

" -- auto-pairs -- "
nnoremap se :Antovim<cr>
let g:custom_antovim_definitions = [
\ ['TRUE', 'FALSE'],
\ ['True', 'False'],
\ ['yes', 'no'],
\ ['YES', 'NO']
\ ]
"autocmd FileType javascript let g:custom_antovim_definitions = [
"\ ['yes', 'no']
"\ ]

" -- auto-pairs -- "
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"'}

" -- vim-after-object -- "
autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')

" -- nerdtree -- "
map tt :NERDTreeToggle<cr>

" -- vim-capslock -- "
map <c-o> <Plug>CapsLockToggle
imap <c-o> <Plug>CapsLockToggle

" -- vim-closetag -- "
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" -- MatchTagAlways -- "
autocmd VimEnter * source $MYVIMRC
nnoremap <leader><leader>m :e %<cr>
nnoremap <space><space> :MtaJumpToOtherTag<cr>
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 1

" -- status line -- "
" <--> eleline <--> "
set laststatus=2

" <--> airline <--> "
"let g:airline_theme='lucius'

" -- colorscheme -- "
" <--> space_vim_theme <--> "
colorscheme space_vim_theme
set background=dark
set termguicolors
set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:deus_termcolors=256
hi Comment guifg=#5C637f ctermfg=248

" <--> deus <--> "
"colorscheme deus
"set background=dark
"set t_Co=256
"set termguicolors
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"let g:deus_termcolors=256
"hi NonText ctermfg=gray guifg=grey10

" <--> snazzy <--> "
"colorscheme snazzy
"set background=dark
"let g:SnazzyTransparent = 1
"set t_Co=256
"set termguicolors
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"let g:deus_termcolors=256
"hi NonText ctermfg=gray guifg=grey10

" -- vim-trailing-whitespace -- "
map <leader><leader><space> :FixWhitespace<cr>

" -- vim-maximizer -- "
nnoremap <silent><c-y> :MaximizerToggle<CR>
vnoremap <silent><c-y> :MaximizerToggle<CR>gv
inoremap <silent><c-y> <C-o>:MaximizerToggle<CR>

" -- auto-pairs -- "
let g:AutoPairsShortcutToggle = '<leader><leader>p'

" -- youcompleteme -- "
" YouCompleteMe
" Python Semantic Completion
let g:ycm_python_binary_path = '/usr/bin/python3'
" C family Completion Path
let g:ycm_global_ycm_extra_conf = '/home/luis/.config/nvim/myplugin/YouCompleteMe/.ycm_extra_conf.py'
" 跳转快捷键
"nnoremap <c-k> :YcmCompleter GoToDeclaration<CR>|
"nnoremap <c-h> :YcmCompleter GoToDefinition<CR>|
"nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|
" 停止提示是否载入本地ycm_extra_conf文件
let g:ycm_confirm_extra_conf = 0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 弹出列表时选择第1项的快捷键(默认为<TAB>和<Down>)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" 弹出列表时选择前1项的快捷键(默认为<S-TAB>和<UP>)
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" 主动补全, 默认为<C-Space>
"let g:ycm_key_invoke_completion = ['<C-Space>']
" 停止显示补全列表(防止列表影响视野), 可以按<C-Space>重新弹出
"let g:ycm_key_list_stop_completion = ['<C-y>']

"================================================================="

" ------------ "
" --- code --- "
" ------------ "

" -- omnifunc -- "
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete

" -- compile the code -- "
noremap <leader><leader>r :call CompileCode()<CR>
func! CompileCode()
	exec "w"
	if &filetype == 'c'
	elseif &filetype == 'cpp'
	elseif &filetype == 'java'
	elseif &filetype == 'sh'
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python %
	elseif &filetype == 'html'
		:!live-server --open=% --browser=firefox --port=8888 &
	elseif &filetype == 'markdown'
	elseif &filetype == 'tex'
	elseif &filetype == 'dart'
	elseif &filetype == 'go'
	endif
endfunc

" -- format the code -- "
noremap <leader><leader>f :call FormatCode()<CR>
func! FormatCode()
	exec "w"
	if &filetype == 'c'
	elseif &filetype == 'cpp'
	elseif &filetype == 'java'
	elseif &filetype == 'sh'
	elseif &filetype == 'python' || &filetype == 'json'
		exec "Autoformat"
		exec "Autoformat"
	elseif &filetype == 'html' || &filetype == 'css' || &filetype == 'javascript'
		exec "% j"
		exec "Autoformat"
	elseif &filetype == 'markdown'
	elseif &filetype == 'tex'
	elseif &filetype == 'dart'
	elseif &filetype == 'go'
	endif
	exec "w"
endfunc

" -- check the code -- "
noremap <leader><leader>c :call CheckCode()<CR>
func! CheckCode()
	exec "w"
	if &filetype == 'c'
	elseif &filetype == 'cpp'
	elseif &filetype == 'java'
	elseif &filetype == 'sh'
	elseif &filetype == 'python' || &filetype == 'json'
		exec "ALEToggle"
	elseif &filetype == 'html' || &filetype == 'css' || &filetype == 'javascript'
		exec "ALEToggle"
	elseif &filetype == 'markdown'
	elseif &filetype == 'tex'
	elseif &filetype == 'dart'
	elseif &filetype == 'go'
	endif
endfunc

"================================================================="
