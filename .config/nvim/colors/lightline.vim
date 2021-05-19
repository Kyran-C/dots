
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace':{}, 'visual': {}, 'tabline': {} }
let s:p.normal.left = [ ['#1c1c1c', '#808080', 234, 244, "bold"], ['#808080', '#262626', 244, 235], ['#808080', '#262626', 244, 235] ]
let s:p.normal.right = [ ['#808080', '#1c1c1c', 244, 234], ['#808080', '#1c1c1c', 244, 234], ['#808080', '#262626', 244, 235] ]
let s:p.normal.middle = [ ['#808080', '#1c1c1c', 244, 234], ['#808080', '#1c1c1c', 244, 234] ]
let s:p.inactive.left = [ ['#808080', '#262626', 244, 235] ]
let s:p.insert.left = [ ['#1c1c1c', '#eeeeee', 234, 255, "bold"], ['#808080', '#262626', 244, 235] ]
let s:p.insert.right = [ ['#808080', '#1c1c1c', 244, 234], ['#808080', '#1c1c1c', 244, 234], ['#808080', '#262626', 244, 235] ]
let s:p.insert.middle = [ ['#808080', '#1c1c1c', 244, 234], ['#808080', '#1c1c1c', 244, 234] ]
let s:p.visual.left = [ ['#1c1c1c', '#eeeeee', 234, 255, "bold"], ['#1c1c1c', '#262626', 244, 235] ]
let s:p.tabline.left = [ ['#1c1c1c', '#444444', 234, 238, 'italic'] ]
let s:p.tabline.tabsel = [ ['#1c1c1c', '#808080', 234, 244] ]

let g:lightline#colorscheme#custom_colors#palette = s:p

