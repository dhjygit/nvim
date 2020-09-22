" ------------ "
" --- code --- "
" ------------ "

" -- compile the code -- "
noremap <space>r :call CompileCode(0)<CR>
noremap <space>R :call CompileCode(1)<CR>
func! CompileCode(type)
	exec "w"
	if &filetype == 'c'
		set splitbelow
		:silent !g++ % -o %<
		:sp
		:term ./%<
	elseif &filetype == 'cpp'
		set splitbelow
		:silent !g++ -std=c++11 % -Wall -o %<
		:sp
		:term ./%<
	elseif &filetype == 'java'
	elseif &filetype == 'sh'
	    :!time bash %
	elseif &filetype == 'python'
	    set splitbelow
        :sp
        :term python3 %
	elseif &filetype == 'html'
		silent !live-server --open=% --browser=firefox --port=8888 &
	elseif &filetype == 'markdown'
        exec a:type == 0 ? "InstantMarkdownPreview" : "InstantMarkdownStop"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'dart'
	elseif &filetype == 'go'
	endif
endfunc

" -- format the code -- "
noremap <space>f :call FormatCode()<CR>
func! FormatCode()
	exec "w"
	if &filetype == 'java'
	elseif &filetype == 'sh'
	elseif &filetype == 'c'|| &filetype == 'cpp'
        :silent !clang-format -style=Microsoft -i %
        :e
	elseif &filetype == 'python'
        :silent !black %
        :e %
	elseif &filetype == 'html' || &filetype == 'css' || &filetype == 'javascript'
        :silent !js-beautify -r %
        :e %
	elseif &filetype == 'markdown'
        :CocCommand prettier.formatFile
	elseif &filetype == 'tex'
	elseif &filetype == 'dart'
	elseif &filetype == 'go'
	endif
	exec "w"
endfunc

" -- check the code -- "
"noremap <space>c :call CheckCode()<CR>
"func! CheckCode()
"	exec "w"
"	if &filetype == 'c'
"	elseif &filetype == 'cpp'
"	elseif &filetype == 'java'
"	elseif &filetype == 'sh'
"	elseif &filetype == 'python' || &filetype == 'json'
"		exec "ALEToggle"
"	elseif &filetype == 'html' || &filetype == 'css' || &filetype == 'javascript'
"		exec "ALEToggle"
"	elseif &filetype == 'markdown'
"	elseif &filetype == 'tex' || &filetype == 'vim'
"	elseif &filetype == 'dart'
"	elseif &filetype == 'go'
"	endif
"endfunc
