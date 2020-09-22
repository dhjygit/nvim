inoremap <expr> <CR> InsertMapForEnter()
function! InsertMapForEnter()
    if pumvisible()
        return "\<C-y>"
    elseif strcharpart(getline('.'),getpos('.')[2]-1,2) == '</'
        return "\<CR>\<Esc>O"
    else
        return "\<CR>"
    endif
endfunction


nnoremap <space>p :call BackgroundColor(1)<CR>
function! BackgroundColor(option) " Get the .backColor to set backgroud color
	execute a:option != 1 && a:option != 2 ? "return" : ""
	if empty(glob($HOME.'/.config/nvim/.backColor'))
		call system('touch '.$HOME.'/.config/nvim/.backColor')
		call writefile([ '1' ], $HOME.'/.config/nvim/.backColor')
	endif
	if a:option == 2
		if readfile($HOME.'/.config/nvim/.backColor')[0] == '1'
            hi Normal ctermfg=223 ctermbg=None guifg=#ebdbb2 guibg=None
		else
            hi Normal ctermfg=249 ctermbg=235 guifg=#b2b2b2 guibg=#282a36
		endif
	else
		let l:currentColor = str2nr(readfile($HOME.'/.config/nvim/.backColor')[0])
		execute l:currentColor == 1 ?
					\ "hi Normal ctermfg=223 ctermbg=None guifg=#ebdbb2 guibg=None"
					\ : l:currentColor == 0 ?
					\ "hi Normal ctermfg=223 ctermbg=235 guifg=#ebdbb2 guibg=#2C323B" : ""
		call writefile(
					\ l:currentColor == 0 ? [ '1' ] : [ '0' ],
					\ $HOME.'/.config/nvim/.backColor')
		unlet l:currentColor
	endif
endfunction
"hi Normal ctermfg=223 ctermbg=None guifg=#ebdbb2 guibg=None
"hi Normal ctermfg=249 ctermbg=235 guifg=#b2b2b2 guibg=#282a36
