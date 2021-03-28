
set updatetime=300

set signcolumn=number

inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

"  :: Mappings to fill out ::
"
" map <silent> ___ <Plug>(coc-diagnostic-prev) 
" map <silent> ___ <Plug>(coc-diagnostic-next) 
" map <silent> ___ <Plug>(coc-definition) 
" map <silent> ___ <Plug>(coc-type-definition) 
" map <silent> ___ <Plug>(coc-implementation) 
" map <silent> ___ <Plug>(coc-references) 
" <Plug>(coc-rename)
"
" map <silent> ___ :call <SID>show_documenation()<CR> 
"
function! s:show_documenation()
	if (index(['vim', 'help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '!' . &keywordprg . " " . expand('<cword>')
	endif
endfunction


autocmd CursorHold * silent call CocActionAsync('highlight')
