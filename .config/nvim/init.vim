
" Core settings
runtime settings.vim

" Translate escape sequences into modifier key presses
runtime translate-mappings.vim

" Import key mappings
runtime mappings/mapping.vim

" Better sideways scrolling
runtime mappings/sidescroll.vim

let g:python3_host_prog = '/usr/bin/python3'
let g:python2_host_prog = '/usr/bin/python2'

call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'thaerkh/vim-workspace'

Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'clangd/coc-clangd'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'kevinoid/vim-jsonc'

Plug 'Raimondi/delimitMate'
Plug 'phaazon/hop.nvim'
Plug 'chaoren/vim-wordmotion'
Plug 'tpope/vim-commentary'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
"Plug 'dbgx/lldb.nvim'

call plug#end()

syntax clear


set background=dark
let g:gruvbox_italic=1
colorscheme custom_colors

set noshowmode

augroup highlight_yank
	autocmd!
	autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000)
augroup END

" ::Plugin settings::

runtime modules/vim-workspace.vim

runtime modules/fzf.vim

runtime modules/coc.vim

runtime modules/lightline.vim
