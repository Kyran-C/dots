
set updatetime=300

set signcolumn=number

"   ctrl-space to trigger completion
inoremap <silent><expr> <F13><spc>
	\ pumvisible() ? coc#_select_confirm() :
	\ coc#refresh()

"   return to complete
inoremap <expr> <cr> coc#_selected() ? coc#_select_confirm() : "\<C-g>u\<CR>"

"   <Right> to complete
inoremap <silent><expr> <Right>
	\ pumvisible() ? coc#_select_confirm() :
	\ "\<Right>"

"   <Left> to cancel
inoremap <expr> <Left> pumvisible() ? "<C-O>:call coc#_cancel()<CR>" : "\<Left>"

"   <Tab> to select next
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"   <S-Tab> to select previous
inoremap <silent><expr> <S-Tab> 
	\ pumvisible() ? "\<C-p>" : "\<C-h>"

"  :: Mappings to fill out ::
"
" map <silent> ___ <Plug>(coc-diagnostic-prev) 
" map <silent> ___ <Plug>(coc-diagnostic-next) 
" map <silent> ___ <Plug>(coc-definition) 
" map <silent> ___ <Plug>(coc-type-definition) 
" map <silent> ___ <Plug>(coc-implementation) 
" map <silent> ___ <Plug>(coc-references) 
map <silent> B <Plug>(coc-codeaction) 
" <Plug>(coc-rename)
"
map <silent> K :call <SID>show_documenation()<CR> 

function! s:show_documenation()
	if (index(['vim', 'help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '!' . &keywordprg . " " . expand('<cword>')
	endif
endfunction
