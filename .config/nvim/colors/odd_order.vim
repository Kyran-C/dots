
lua package.loaded['lush_theme.odd_order'] = nil

lua << EOF
local theme_spec = require('lush_theme.odd_order')
require('lush')(theme_spec)
EOF

runtime colors/lightline.vim
