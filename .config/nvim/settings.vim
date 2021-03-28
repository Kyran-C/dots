let mapleader="\<space>"
"nmap <Space> <leader>

set undodir=~/.config/nvim/.undodir

set noshowmode 					" No need to show the mode, we have a statusline for that
set mouse=a 					" Enable mouse in all modes
set title 						" Set window title to current file
set timeoutlen=150 				" Shorten timeout between successive keypressses
set relativenumber number 		" Enable relative line numbers and line number for current line
set tabstop=4 					" Tabs are 4 spaces wide
set shiftwidth=0 				" Auto indent to tabstop width
set virtualedit=onemore,block 	" Allow cursor to move freely in block select mode, and move one past the end of a line
set hidden 						" Allow buffers to be pushed to the background when opening new files
set cmdheight=2 				" Extra room for messaages
set foldmethod=syntax 			" Fold on syntax
set foldminlines=1
set nofoldenable
set scrolloff=999 				" Keep cursor centered in view
set sidescrolloff=20
set nowrap
set nosmarttab 					" Don't repaint during macro execution
set inccommand=split 			" Live preview of matching text, showing off screen changes in a preview buffer
set lazyredraw 					" Don't repaint during macro execution
set undofile 					" Persistent undo file

set ignorecase 					" Case insensitive when searching...
set smartcase 					" Unless searching for caps

set termguicolors 				" Use true color
set cursorline
set splitright splitbelow
