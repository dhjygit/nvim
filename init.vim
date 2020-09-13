" " " " " " " " " " " " " " " " " " " " " " " " " " " " " "
"    __  ____   ___   ___     _____ __  __ ____   ____    "
"   |  \/  \ \ / / \ | \ \   / /_ _|  \/  |  _ \ / ___|   "
"   | |\/| |\ V /|  \| |\ \ / / | || |\/| | |_) | |       "
"   | |  | | | | | |\  | \ V /  | || |  | |  _ <| |___    "
"   |_|  |_| |_| |_| \_|  \_/  |___|_|  |_|_| \_\\____|   "
"                                                         "
" " " " " " " " " " " " " " " " " " " " " " " " " " " " " "

"================================================================="

" Author:   dhjy
" Github:   https://github.com/dhjygit/nvim

"================================================================="

" ------------------------------------------------- "
" --- Download configuration file automatically --- "
" ------------------------------------------------- "

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/dhjygit/nvim/master/autoload/plug.vim
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" -------------------------------- "
" --- Initialize configuration --- "
" -------------------------------- "
scriptencoding utf-8

let s:script_path = expand('<sfile>:p:h')
let s:sourceList = [
    \ 'code',
    \ 'basic',
    \ 'plugins',
    \ 'cocplugins'
    \]

for s:item in s:sourceList
  exec 'source ' . s:script_path . '/nvimconfig/' . s:item . '.vim'
endfor

unlet s:script_path
unlet s:sourceList
