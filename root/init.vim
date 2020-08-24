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
    \ https://raw.githubusercontent.com/dhjygit/nvim/master/autoload/plug.vim
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
vnoremap a` c`<esc>pa`<esc>
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

Plug '986299679/space-vim-theme'
Plug 'liuchengxu/eleline.vim'
Plug 'vim-scripts/BufLine'
Plug 'scrooloose/nerdtree'
Plug 'szw/vim-maximizer'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-capslock'
Plug 'kshenoy/vim-signature'
Plug 'jwarby/antovim'

call plug#end()

" ------------------------- "
" --- config of plugins --- "
" ------------------------- "
" -- BufLine -- "
let g:wintabs_display = 'tabline'
"values: 'tabline', 'statusline', or 'none'

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

" -- nerdtree -- "
map tt :NERDTreeToggle<cr>

" -- vim-capslock -- "
map <c-o> <Plug>CapsLockToggle
imap <c-o> <Plug>CapsLockToggle

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

" -- vim-maximizer -- "
nnoremap <silent><c-y> :MaximizerToggle<CR>
vnoremap <silent><c-y> :MaximizerToggle<CR>gv
inoremap <silent><c-y> <C-o>:MaximizerToggle<CR>

" -- auto-pairs -- "
let g:AutoPairsShortcutToggle = '<leader><leader>p'

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

"================================================================="
