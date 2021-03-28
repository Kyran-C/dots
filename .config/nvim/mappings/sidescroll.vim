
" == Left biased side-scrolling ==
" View will scroll right, maintaining &sidescrolloff space, as usual.
" When changing directions, view will immediately begin scrolling left again
" rather than remaining stationary until the cursor approaches the left
" margin.

function s:SideScroll()
	let l:cursor_pos = wincol()
	let l:win_width = winwidth(0)
	let l:scroll_amount = winsaveview().leftcol

	if &wrap || l:scroll_amount == 0
		return 0
	endif

	" get distance from cursor to window edge
	let l:right_padding = l:win_width - l:cursor_pos
	"
	" subtract sidescrolloff
	let l:target_col = l:win_width - &sidescrolloff

	" shift window
	let l:view_shift = l:target_col - l:cursor_pos

	if l:view_shift > 0
		exe 'normal! ' . l:view_shift . 'zh'
	endif
endfunction

" Trigger every time the cursor moves
"autocmd CursorMoved,CursorMovedI * call <SID>SideScroll()
autocmd CursorMoved * call <SID>SideScroll()
