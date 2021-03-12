function! CocCurrentFunction()
	return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = { 
		\ 'colorscheme': 'custom_colors',
		\ 'active': {
		\ 	'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ], [ 'cocstatus', 'currentfunction' ] ],
		\	'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'filetype' ] ]
		\ },
		\ 'inactive': {
		\ 	'left': [ [ 'readonly', 'filename', 'modified' ] ],
		\	'right': []
		\ },
		\ 'component_function': {
		\ 	'cocstatus': 'coc#status',
		\	'currentfunction': 'CocCurrentFunction'
		\ },
		\ }
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

