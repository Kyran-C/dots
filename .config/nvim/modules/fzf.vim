let g:fzf_layout = { 'window': 'call FloatingFZF()' }
function! FloatingFZF()
	let buf = nvim_create_buf(v:false, v:true)
	call setbufvar(buf, '&signcolumn', 'no')

	let height = &lines - 8
	let width = float2nr(&columns - (&columns * 2 / 10))
	let col = float2nr((&columns - width) / 2)

	let opts = {
		\ 'relative': 'editor', 
		\ 'row': 4,
		\ 'col': col,
		\ 'width': width,
		\ 'height': height
		\ }
	
	call nvim_open_win(buf, v:true, opts)
endfunction

autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

let g:fzf_colors = 
\ { 'fg': 	['fg', 'Normal']
\ , 'bg': 	['bg', 'Normal']
\ , 'hl': 	['fg', 'Comment']
\ , 'fg+': 	['fg', 'Function', 'Normal']
\ , 'bg+': 	['bg', 'Function', 'Normal']
\ , 'hl+': 	['fg', 'Comment'] }
