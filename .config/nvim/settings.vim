let mapleader="\<space>"

set undodir=~/.config/nvim/.undodir

set confirm						" Prompt to save modified buffers when quitting, rather than simply failing
set noshowmode					" No need to show the mode, we have a statusline for that
set mouse=a						" Enable mouse in all modes
set title						" Set window title to current file
set timeoutlen=150				" Shorten timeout between successive keypressses
set relativenumber number		" Enable relative line numbers and line number for current line
set tabstop=4					" Tabs are 4 spaces wide
set shiftwidth=0				" Auto indent to tabstop width
set virtualedit=onemore,block	" Allow cursor to move freely in block select mode, and move one past the end of a line
set hidden						" Allow buffers to be pushed to the background when opening new files
set cmdheight=2					" Extra room for messaages
set foldmethod=syntax			" Fold on syntax
set foldminlines=2				" Folds of 2 lines or more are eligible for folding
set nofoldenable				" Expand all folds by default
set scrolloff=999				" Keep cursor centered in view
set sidescrolloff=20			" Keep at least 20 columns between the cursor and the right edge of the window
set nowrap						" Don't wrap lines by default
set nosmarttab					" Don't repaint during macro execution
set inccommand=split			" Live preview of matching text, showing off screen changes in a preview buffer
set lazyredraw					" Don't repaint during macro execution
set undofile					" Persistent undo file

set ignorecase					" Case insensitive when searching...
set smartcase					" 	Unless searching for caps

set termguicolors				" Use true color
set cursorline					" Highlight the line the cursor is on
set splitright splitbelow		" Open new windows below and to the right

" Highlight special characters
set list
set listchars=space:·,tab:\│\ ,extends:…,precedes:…

" Highlight tabs separately from other special characters
"    Starting_Tab_Character matches any tabs at the start of a line
augroup tab_highlighting
	autocmd!
	autocmd VimEnter,WinEnter * match Tab_Character /\(^	\+\)\@!	/
	autocmd VimEnter,WinEnter * 2match Starting_Tab_Character /^	\+/
augroup END
