" --------------- "
" --- Plugins --- "
" --------------- "

call plug#begin('~/.config/nvim/myplugin')

" -- colorscheme statusline Bufferline -- "
Plug 'mhinz/vim-signify'
Plug '986299679/space-vim-theme'
Plug 'liuchengxu/eleline.vim'
Plug 'vim-scripts/BufLine'

" -- coc extension -- "
Plug 'neoclide/coc.nvim'

" -- color highlight -- "
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }


" -- html css javascript json -- "
Plug 'alvan/vim-closetag', {'for': 'html'}
Plug 'elzr/vim-json'
"Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'Chiel92/vim-autoformat'
"Plug 'ternjs/tern_for_vim'

" -- markdown -- "
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dkarter/bullets.vim'

" -- convenient tools -- "
Plug 'mbbill/undotree'
Plug 'RRethy/vim-illuminate'
Plug 'preservim/nerdcommenter'
Plug 'szw/vim-maximizer'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-capslock'
Plug 'liuchengxu/vista.vim'
Plug 'yggdroot/indentline'
Plug 'jwarby/antovim'
"Plug 'bronson/vim-trailing-whitespace'
"Plug 'liuchengxu/vim-clap'
"Plug 'junegunn/vim-after-object'
"Plug 'mg979/vim-visual-multi'
"Plug 'tpope/vim-abolish'
"Plug 'AndrewRadev/splitjoin.vim'
"Plug 'Valloric/MatchTagAlways'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

Plug 'metakirby5/codi.vim'

call plug#end()

" ---------------------- "
" --- Plugins conifg --- "
" ---------------------- "

" -- colorscheme -- "
colorscheme lavender
set background=dark
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:deus_termcolors=256
hi Comment guifg=#5C637f ctermfg=248

" -- vim-instant-markdown -- "
let g:instant_markdown_browser = "firefox --new-window"
let g:instant_markdown_port = 8888
let g:instant_markdown_slow = 0
let g:instant_markdown_autostart = 0
let g:instant_markdown_autoscroll = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_mathjax = 1

" -- vim-hexokinase -- "
let g:Hexokinase_highlighters = [
\ 'backgroundfull'
\ ]

" -- bullets.vim -- "
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]

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

" -- vista.vim -- "
nmap <space>v :Vista!!<cr>
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" -- indentline -- "
let g:indentLine_enabled = 0
nnoremap <leader>i :IndentLinesToggle<cr>
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_char_list = ['┆']
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" -- Antovim -- "
nnoremap rr :Antovim<cr>
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
let g:AutoPairsShortcutToggle = '<leader>p'

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

" -- vim-maximizer -- "
nnoremap <silent><c-y> :MaximizerToggle<CR>
vnoremap <silent><c-y> :MaximizerToggle<CR>gv
inoremap <silent><c-y> <C-o>:MaximizerToggle<CR>

" -- codi.vim -- "
nnoremap <space>d :Codi!!<CR>

"================================================================="
let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/usr/bin/python3.8'
"================================================================="
