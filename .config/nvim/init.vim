
command SrcVim so init.vim

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
Plug 'rktjmp/lush.nvim'
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf.vim'
Plug 'tversteeg/registers.nvim'
Plug 'kevinoid/vim-jsonc'

Plug 'Raimondi/delimitMate'
Plug 'phaazon/hop.nvim'
Plug 'chaoren/vim-wordmotion'
Plug 'tpope/vim-commentary'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Ranger
Plug 'kevinhwang91/rnvimr'
"
"Plug 'dbgx/lldb.nvim'
"Plug 'lewis6991/gitsigns.nvim'

call plug#end()

set updatetime=300

set background=dark
colorscheme odd_order

augroup highlight_yank
	autocmd!
	autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000)
augroup END

" ::Plugin settings::

runtime modules/vim-workspace.vim

runtime modules/fzf.vim

runtime modules/coc.vim

runtime modules/lightline.vim

runtime modules/ranger.vim
