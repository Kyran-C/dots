let mapleader="\<space>"
set timeoutlen=150


" == File Saving ==
nnoremap <c-s> :w<CR>
inoremap <c-s> <C-O>:w<CR>

" == Hop ==
map <silent> <F10> :HopWord<CR>
map <silent> <space><F10> :HopChar1<CR>

" == Reload .vimrc ==
"":call MapAlt( "<F15>r", ":source ~/.config/.vimrc<CR>" )

" == Tabs ==
nnoremap <silent>  :tabnew<CR>
nnoremap <silent>  :tabclose<CR>
nnoremap <silent> <F13><LTab> :tabnext<CR>
nnoremap <silent> <F14><LTab> :tabprevious<CR>
noremap <silent> <M-Left>  :-tabmove<cr>
noremap <silent> <M-Right> :+tabmove<cr>

" == Folding ==
nnoremap z; zo
nnoremap zj zc
nnoremap zk zM
nnoremap zl zR
nnoremap <M-z><M-;> zO
nnoremap <M-z><M-j> zC
nnoremap <M-z><M-k> zM
nnoremap <M-z><M-l> zR

" == Snippets for auto-formatting curly braces and parens ==
inoremap <F14>[ {<CR><CR>}<Up><Tab>
inoremap <F14>] {<CR><CR>}<Up><Tab>
noremap! <F14>9 (  )<Left><Left>
noremap! <F14>0 (  )<Left><Left>

" == Snippet to map alt-space and shift-space to underscore
noremap! <F19><spc> _
noremap! <F15><spc> _

" == alt-. to "->"
noremap! <F15>. ->

" == ctrl-space also inserts space after cursor
inoremap <F13><spc> <space><space><left>
" inoremap <C-<space>> <space><space><left>

" == alt-; adds a semicolon at the end of the line
nnoremap <silent> <M-;> :s/$/;/
						\<bar>noh<CR>
						\``
inoremap <silent> <M-;> <C-o>:s/$/;/
						\<bar>noh<CR>
						\<C-o>``

" == Toggle Commenting ==
nnoremap <M-/> <Plug>CommentaryLine
vnoremap <M-/> <Plug>CommentaryLine

" == Jump List ==
nnoremap g, <c-o>
nnoremap g. <c-i>

" prevent ctrl space from interfering
" TODO not sure if this is still necessary
nnoremap <C-space> <nop>
nnoremap g; <nop>

" == Marks ==
nnoremap ' `
nnoremap ` '
"        alt-' to create mark
nnoremap <M-'> m

" == Escape ==
inoremap jk <Esc>`^
inoremap kj <Esc>`^
vnoremap jk <Esc>
vnoremap kj <Esc>
cnoremap jk <C-c>
cnoremap kj <C-c>

" == Undo/Redo ==
noremap <C-z> <undo>
inoremap <C-z> <C-o><undo>
noremap <F14>z :redo<CR>
inoremap <F14>z <C-o>:redo<CR>

" == Visual mode ==
nnoremap s v
vnoremap s v
nnoremap S V
vnoremap S V
nnoremap <M-S-s> <C-V>

" remap directional keys
noremap j h
noremap k k
noremap l j
noremap ; l
vnoremap j h
vnoremap k k
vnoremap l j
vnoremap ; l
onoremap j h
onoremap k k
onoremap l j
onoremap ; l
inoremap <C-j> h
inoremap  k
inoremap  j
inoremap <C-;> l

" unmap shift-up/down
nmap <S-Down> <Nop>
nmap <S-Up> <Nop>

" == Window Splits ==
set winminheight=0
noremap <C-h> :vsp 
noremap <C-v> :sp 
noremap <F14>h :vsp<CR>
noremap <F14>v :sp<CR>
"       ctrl focuses adjacent splits
noremap <C-j> <c-w>h
noremap <C-k> <c-w>k
noremap <C-l> <c-w>j
noremap <C-;> <C-w>l
"       ctrl-alt resizes
noremap <C-M-k> <c-w>4-
noremap <C-M-l> <c-w>4+
noremap <C-M-j> <c-w>4<
noremap <C-M-;> <c-w>4>
"       ctrl-shift moves
noremap <F14>j <c-w>H
noremap <F14>; <c-w>L
noremap <F14>k <c-w>K
noremap <F14>l <c-w>J
"       ctrl-+ maximises (and recenters window on cursor)
noremap <F14>= <c-w>_<c-w><bar>zz


" == Next/Previous Occurance ==
noremap h n
noremap H N
" clear highlighted search
nnoremap <silent> <esc> :noh<return><esc>

" == Find/Till ==
noremap y f
onoremap y f
vnoremap y f
noremap Y F
vnoremap Y F
onoremap Y F

" == Insert/Append ==
noremap n i
vnoremap n I
noremap N I

noremap m a
vnoremap m A
noremap M A

" == Insert/Append space ==
" TODO make these not affect changelist
noremap <leader>m a<Space><Esc>
noremap <leader>n i<Space><Esc>

" == Change ==
noremap f "_c
onoremap f c
vnoremap f "_c


" == Paste ==
nnoremap v p
nnoremap V P
vnoremap v p

" == Copy ==
nnoremap c y
vnoremap c y
onoremap c y
nnoremap C Y
onoremap C Y

" == Cut/Delete ==
noremap D d
onoremap D d
vnoremap D d
nnoremap d "_d
vnoremap d "_d
noremap x "_x
noremap X "_X

" == Inner/Outer ==
onoremap a a
onoremap s i
vnoremap a a
vnoremap s i
onoremap ap aw
onoremap sp iw

" == Word-wise movements ==
noremap u ge
noremap i b
noremap o e
noremap p w
inoremap <F13>u hgel
inoremap <F13>i b
inoremap <F13>o hel
inoremap <F13>p w
" == WORD-wise movements ==
noremap U gE
noremap I B
noremap O E
noremap P W
inoremap <F14>u gE
inoremap <F14>i B
inoremap <F14>o E
inoremap <F14>p W

" == Camel/Snake case word movement ==
let g:wordmotion_mappings = {
\ 'w' : '<M-p>',
\ 'b' : '<M-i>',
\ 'e' : '<M-o>',
\ 'ge' : '<M-u>',
\ 'aw' : 'a<M-w>',
\ 'iw' : 's<M-w>',
\ '<C-R><C-W>' : ''
\ }

" == Goes to first character in line, or first column when called a second time
function! LineBegin()
	let pos = getpos('.')
	execute "normal! ^"
	if pos == getpos('.')
		execute "normal! 0"
	endif
endfunction

" == Move within a line ==
nnoremap <silent> gj :call LineBegin()<CR>
vnoremap <silent> gj :call LineBegin()<CR>
nnoremap g; g$
vnoremap g; g$
nnoremap gJ 0
vnoremap gJ 0
nnoremap g: $
vnoremap g: $

onoremap gj ^
onoremap g; g$
onoremap gJ 0
onoremap g: $

" == Move within file (begin/end) ==
noremap gk gg
noremap gl G
onoremap gk gg
onoremap gl G

" == Move to braces/parentheses ==
"        alt moves to next open/close brace
nnoremap <F15>] ]}
nnoremap <F15>[ [{
"        alt-shift moves to previous open/close brace
nnoremap <F16>] ]{
nnoremap <F16>] [}
"     == operator pending mappings ==
onoremap <F15>] ]}
onoremap <F15>[ [{
onoremap <F16>] ]{
onoremap <F16>[ [}
"        alt moves to next open/close parenthesis
nnoremap <F15>0 ])
nnoremap <F15>9 ](
"        alt-shift moves to previous open/close parenthesis
nnoremap <F16>0 [)
nnoremap <F16>9 [(
"     == operator pending mappings ==
onoremap <F15>0 ])
onoremap <F15>9 ](
onoremap <F15>0 [)
onoremap <F15>9 [(

"noremap <silent> <F15>o /}<CR>:noh<CR>
"noremap <silent> <F15>p /{<CR>:noh<CR>
"noremap <silent> <F15>i ?{<CR>:noh<CR>
"noremap <silent> <F15>u ?}<CR>:noh<CR>

" noremap <silent> <F15>o /{<CR>:noh<CR>
" noremap <silent> <F15>p /{<CR>:noh<CR>%
" noremap <silent> <F15>i ?}<CR>:noh<CR>
" noremap <silent> <F15>u ?}<CR>:noh<CR>%

" == Move to start/end of method ==
"noremap <F15>o j0[[%/{<CR>
"noremap <F15>p /}<CR>b99]}
"noremap <F15>i ?{<CR>w99[{ 
"noremap <F15>u k$][%?}<CR>

"       alt-shift for parentheses
"noremap <F16>o ])
"noremap <F16>p ](
"noremap <F16>i [(
"noremap <F16>u [)

" == Insert on line above/below ==  
nnoremap <leader>l o
nnoremap <leader>k O

" == Prepend/Append newline to current line ==
nnoremap <F19><spc>L myo<Esc>`y
nnoremap <F19><spc>K myO<Esc>`y

" == Bubble lines ==
nnoremap <silent> <M-k> myV:move '<-2<CR><Esc>`y
nnoremap <silent> <M-l> myV:move '>+1<CR><Esc>`y
vnoremap <silent> <M-k> :move '<-2<CR><Esc>gv
vnoremap <silent> <M-l> :move '>+1<CR><Esc>gv

" == Repeat last action ==
nnoremap a .

" == Indenting ==
"        maintain selection after indent/outdent
vnoremap < <gv
vnoremap > >gv

" == Close help window with escape
autocmd filetype help nnoremap <silent> <buffer> <esc> :helpclose<CR>

" == Close vim-plug window with escape
autocmd filetype vim-plug nnoremap <silent> <buffer> <esc> :q<CR>

" == Comment ==
"omap <F13>/ c
"nmap <F13>/ gc
nnoremap <C-M-/> I// ==========================================================================================================================================================kn 



nnoremap <silent> b :call CocActionAsync('doHover')<CR>
"nmap b <Plug>(coc-definition)
"nnoremap bj :call CocLocations('ccls','$ccls/navigate',{'direction':'U'})<CR>
"nnoremap b; :call CocLocations('ccls','$ccls/navigate',{'direction':'D'})<CR>
"nnoremap bk :call CocLocations('ccls','$ccls/navigate',{'direction':'L'})<CR>
"nnoremap bl :call CocLocations('ccls','$ccls/navigate',{'direction':'R'})<CR>

