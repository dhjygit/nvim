" ----------------------- "
" --- Basic Settings --- "
" ----------------------- "

set nocompatible
syntax on
syntax enable
filetype on
filetype indent on
filetype plugin on
set clipboard=unnamedplus
set hidden
set updatetime=100
set shortmess+=c
let &t_ut=''
set autochdir
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=en
set termencoding=utf-8
set backspace=eol,start,indent
let &t_ut=''
set autoread
set autochdir
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
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
"set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set visualbell
set virtualedit=block
set ignorecase
set smartcase
set incsearch
set hlsearch
exec "nohlsearch"
"set cursorcolumn
"set cursorline
"set colorcolumn=100
set laststatus=2
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
nnoremap gp `[v`]
au FileType python nnoremap s; <end>a:<esc>
au FileType c,cpp nnoremap s; <end>a;<esc>
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

vnoremap s{ c{<CR>}<esc>kp<esc>`[v`]>><esc>
vnoremap s} c{<CR>}<esc>kp<esc>`[v`]>><esc>

vnoremap sb c(<esc>pa)<esc>%i
nnoremap sb ^v$hc(<esc>pa)<esc>%i

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
map zb :bd!<CR>

" -- Chinese -- "
inoremap 。 .
inoremap “ "
inoremap ” "
inoremap ； ;
inoremap ： :

"================================================================="

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

"================================================================="

silent !mkdir -p ~/.config/nvim/tmp/backup
set backup
set backupdir=~/.config/nvim/tmp/backup

