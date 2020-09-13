" ------------------- "
" --- Coc plugins --- "
" ------------------- "

let g:coc_global_extensions = [
    \ 'coc-explorer',
    \ 'coc-translator',
    \ 'coc-stylelint',
    \ 'coc-syntax',
    \ 'coc-tasks',
    \ 'coc-todolist',
    \ 'coc-vimlsp',
    \ 'coc-emmet',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-diagnostic',
    \ 'coc-bookmark',
    \ 'coc-python',
    \ 'coc-prettier',
	\ 'coc-yaml',
    \ 'coc-pyright']

"================================================================="

" ------------------ "
" --- Coc config --- "
" ------------------ "

" -- basic config -- "
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> gh :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap rn <Plug>(coc-rename)

" Formatting selected code.
xmap <space>f  <Plug>(coc-format-selected)
"nmap <space>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" -- coc-translator -- "

" popup
nmap <c-t> <Plug>(coc-translator-p)
vmap <c-t> <Plug>(coc-translator-pv)

" echo
nmap <c-e> <Plug>(coc-translator-e)
vmap <c-e> <Plug>(coc-translator-ev)

" -- coc-explorer -- "
nmap <space>e :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" -- coc-bookmark -- "
nmap m <nop>
nmap mj <Plug>(coc-bookmark-next)
nmap mk <Plug>(coc-bookmark-prev)
nmap mt <Plug>(coc-bookmark-toggle)
nmap ma <Plug>(coc-bookmark-annotate)
nmap mc :CocCommand bookmark.clearForCurrentFile<CR>
nmap ml :CocList bookmark<CR>

function! s:my_bookmark_color() abort
  let s:scl_guibg = matchstr(execute('hi SignColumn'), 'guibg=\zs\S*')
  if empty(s:scl_guibg)
    let s:scl_guibg = 'NONE'
  endif
  exe 'hi MyBookmarkSign guifg=' . s:scl_guibg
endfunction
call s:my_bookmark_color() " don't remove this line!

augroup UserGitSignColumnColor
  autocmd!
  autocmd ColorScheme * call s:my_bookmark_color()
augroup END

