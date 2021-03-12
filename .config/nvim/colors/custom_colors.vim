" --------------------------------
set background=dark
" --------------------------------

highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="custom_colors"

runtime colors/color_mapping.vim

"syntax clear

" Install grayscale theme
runtime colors/GrayscaleColors.vim 

let none = 'none'
let mygreen = RGB(0, 128, 0)
let myyellow = RGB(128, 128, 0)
let gray = 247
let gray2 = 248
let dark_gray = RGB( 98, 98, 98 )


" Cpp semantic coloring
let enable_custom_highlight_for_cpp = 1
if enable_custom_highlight_for_cpp

runtime colors/reset-lsp-cxx.vim

map <F11> :echo "hi<" . synIDattr(synID(line("."),col("."), 1), "name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0), "name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)), "name") . ">"<CR>

"=============================================================================
" Color Definitions
"=============================================================================
"     Round RGB values to [ 0, 95, 135, 175, 215, 255 ]
" 	or any permutation of [ 0, 128 ]
" 	or shades of gray [ 8, 18, 28, 38, 48, 58, ..., 228, 238 ]

let DEBUG_FG 				= RGB( 0, 0, 0 )
let DEBUG_BG 				= RGB( 0, 255, 255 )
let DEBUG2_FG 				= RGB( 0, 0, 0 )
let DEBUG2_BG 				= RGB( 255, 0, 255 )

let default_text_fg 		= RGB( 255, 255, 255 )
let default_text_bg 		= RGB( 68, 68, 68 )

let syn_noise 				= RGB( 0, 0, 0 )

let cursor_line_bg 			= RGB( 58, 58, 58 )

" === Functions
" let global_function_fg 		= RGB( 135, 215, 175 )
" let static_function_fg 		= RGB( 95, 175, 135 )
let global_function_fg 			= RGB( 95, 215, 175 )
let global_function_style 		= 'italic'
let static_function_fg 			= RGB( 135, 255, 215 )
let static_function_style 		= 'italic'
let member_function_fg 			= RGB( 135, 215, 255 )
let member_function_style 		= none
let constructor_function_fg 	= RGB( 135, 215, 175 )
"let constructor_function_style = 
" let member_function_fg 		= RGB( 135, 215, 255 )

" === Variables
"let global_var_color 		= RGB( 255, 135, 135 )
let global_var_color 		= RGB( 255, 135, 135 )
let global_var_style 		= 'italic'
let static_var_color 		= RGB( 255, 135, 95 )
let static_var_style 		= 'italic'
" let member_var_color 		= RGB( 255, 175, 135 ) 
let member_var_color 		= RGB( 255, 215, 175 )
let member_var_style 		= none
let local_var_color 		= RGB( 255, 255, 215 )
"let member_var_color 		= RGB( 255, 215, 135 ) 

" let global_var_color 		= RGB( 95, 175, 215 )
" let static_var_color 		= RGB( 215, 175, 175 )
" let member_var_color 		= RGB( 255, 175, 135 )
" let local_var_color 		= RGB( 255, 215, 175 )


" === Literals
let literal_bg 				= RGB( 58, 58, 58 )
let literal_fg 				= RGB( 158, 158, 158 )
"let literal_fg 				= RGB( 255, 255, 215 )

" === Comments
let comment_fg 		= RGB( 28, 28, 28 )
let comment_bg 		= none

" === Types/Classes/Namespaces
let type_fg 		= RGB( 18, 18, 18 )
let type_bg 		= none
let type_style 		= 'italic'
let class_fg 		= RGB( 18, 18, 18 )
let class_bg 		= none
let class_style 		= 'italic'
let namespace_fg 	= type_fg

let storage_class_fg = type_fg
let storage_class_bg = type_bg

let keyword_fg 		= type_fg
let keyword_style 	= none

let pre_proc_fg 	= type_fg
let template_param_style = 'bold'

" === Popup Menu
let menu_normal_bg = RGB( 148, 148, 148 )
let menu_normal_fg = RGB( 38, 38, 38 )
"let menu_selected_bg = RGB( 108, 108, 108 )
let menu_selected_bg = RGB( 175, 215, 255 )
let menu_selected_fg = RGB( 0, 0, 0 )


"=============================================================================
" Color Assignment
"=============================================================================

exe Highlight('Normal', default_text_fg, default_text_bg )
exe Highlight( 'Syntax_noise', syn_noise )

exe Highlight( 'Pmenu', menu_normal_fg, menu_normal_bg )
exe Highlight( 'PmenuSel', menu_selected_fg, menu_selected_bg )

exe Highlight('CursorLine', none, cursor_line_bg )
exe Highlight('CursorLineNR', member_var_color, 234 )
exe Highlight('NonText', gray, cursor_line_bg )

exe Highlight('LspCxxHlGroupEnumConstant', literal_fg )
exe Highlight('LspCxxHlGroupNamespace', namespace_fg )

exe Highlight('LspCxxHlSymUnknown', default_text_fg )

" Keywords
exe Highlight('cStorageClass', storage_class_fg, storage_class_bg, type_style )
exe Highlight('cppStorageClass', storage_class_fg, storage_class_bg, type_style )
exe Highlight('cppAccess', storage_class_fg, keyword_style )
" override keyword
exe Highlight('cppModifier', keyword_fg, keyword_style )
exe Highlight('cStatement', keyword_fg, keyword_style )
exe Highlight('cppStatement', keyword_fg, keyword_style )
exe Highlight('cConditional', keyword_fg, keyword_style )
exe Highlight('Operator', keyword_fg, keyword_style )
exe Highlight('cRepeat', keyword_fg, keyword_style )
" class keyword
exe Highlight('cppStructure', keyword_fg, keyword_style )


" Comments
exe Highlight('cCommentL', comment_fg, comment_bg )
exe Highlight('cComment', comment_fg, comment_bg )
exe Highlight( 'comment', comment_fg, comment_bg )

" Literals
exe Highlight('constant', literal_fg, literal_bg )
exe Highlight('cFloat', literal_fg, literal_bg )
exe Highlight('cString', literal_fg, literal_bg )
exe Highlight('cppConstant', literal_fg, literal_bg )
exe Highlight('cppBoolean', literal_fg, literal_bg )
exe Highlight('cppNumber', literal_fg, literal_bg )
exe Highlight('cNumber', literal_fg, literal_bg )

" Type
exe Highlight('cppType', type_fg, type_bg, type_style )
exe Highlight('cType', type_fg, type_bg, type_style )
exe Highlight('LspCxxHlSymClass', class_fg, class_bg, class_style )
exe Highlight('LspCxxHlSymStruct', type_fg, type_bg, type_style )
exe Highlight('LspCxxHlSymEnum', type_fg, type_bg, type_style )
exe Highlight('LspCxxHlSymTypeAlias', type_fg, type_bg, type_style )
exe Highlight('LspCxxHlSymTypeParameter', type_fg, type_bg, template_param_style )

" Function
exe Highlight('LspCxxHlSymFunction', global_function_fg, none, global_function_style )
exe Highlight('LspCxxHlSymStaticMethod', static_function_fg, none, static_function_style )
exe Highlight('LspCxxHlSymConstructor', constructor_function_fg )
exe Highlight('LspCxxHlSymMethod', member_function_fg, none, member_function_style )

" EnumConstant
exe Highlight('LspCxxHlSymEnumMember', literal_fg, literal_bg )

" Preprocessor
exe Highlight('LspCxxHlSymMacro', literal_fg, literal_bg )
exe Highlight('cPreProc', pre_proc_fg )
exe Highlight('cInclude', pre_proc_fg )
exe Highlight('cDefine', pre_proc_fg )
exe Highlight('cPreCondit', pre_proc_fg )

" Namespace
exe Highlight('LspCxxHlSymNamespace', type_fg )

" Variables
"exe Highlight('LspCxxHlSymVariable', DEBUG_FG, DEBUG_BG )
exe Highlight('LspCxxHlSymUnknownVariableNone', global_var_color, none, global_var_style )
exe Highlight('LspCxxHlSymUnknownVariableStatic', static_var_color, none, static_var_style )
exe Highlight('LspCxxHlSymClassVariableStatic', static_var_color, none, static_var_style )
exe Highlight('LspCxxHlSymField', member_var_color, none, member_var_style )
exe Highlight('LspCxxHlGroupMemberVariable', member_var_color, none, member_var_style )
exe Highlight('LspCxxHlSymParameter', local_var_color )
exe Highlight('LspCxxHlSymFunctionVariable', local_var_color )
exe Highlight('LspCxxHlSymMethodVariable', local_var_color )
exe Highlight('LspCxxHlSymConstructorVariable', local_var_color )
exe Highlight('LspCxxHlSymStaticMethodVariable', local_var_color )

endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace':{}, 'visual': {}, 'tabline': {} }
let s:p.normal.left = [ ['#000000', '#000000', 234, 244, "bold"], ['#000000', '#000000', 244, 235], ['#000000', '#000000', 244, 235] ]
let s:p.normal.right = [ ['#000000', '#000000', 244, 234], ['#000000', '#000000', 244, 234], ['#000000', '#000000', 244, 235] ]
let s:p.normal.middle = [ ['#000000', '#000000', 244, 234], ['#000000', '#000000', 244, 234] ]
let s:p.inactive.left = [ ['#000000', '#000000', 244, 235] ]
let s:p.insert.left = [ ['#000000', '#000000', 234, 255, "bold"], ['#000000', '#000000', 244, 235] ]
let s:p.insert.right = [ ['#000000', '#000000', 244, 234], ['#000000', '#000000', 244, 234], ['#000000', '#000000', 244, 235] ]
let s:p.insert.middle = [ ['#000000', '#000000', 244, 234], ['#000000', '#000000', 244, 234] ]
let s:p.visual.left = [ ['#000000', '#000000', 234, 255, "bold"], ['#000000', '#000000', 244, 235] ]
let s:p.tabline.left = [ ['#000000', '#000000', 234, 238, 'italic'] ]
let s:p.tabline.tabsel = [ ['#000000', '#000000', 234, 244] ]
let g:lightline#colorscheme#custom_colors#palette = s:p
