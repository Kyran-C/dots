
local lush = require('lush')
local hsl = lush.hsl



local maroon = hsl(343, 28, 41)
local champagne = hsl(31, 68, 85)
local cool_gray = hsl(192, 8, 35)
local orange = hsl(15, 62, 65)
local celadon = hsl(161, 15, 55)
local spearmint = hsl(160, 56, 56)
local forest = hsl(160, 44, 32)
local teal = hsl(182, 98, 20)
local grotto = hsl(203, 44, 39)

-- member functions and static functions should have similar chroma
-- (l/p/m) variable and member function should have complementary colors
-- type and static function should have complementary colors
-- type and (l/p/m) variable should have complementary colors
--
--  :: Vars_::
-- local, parameter, member, static, global 
--
--  :: Funcs ::
--  member, static, global


local plum = hsl(234, 26, 23)
local color01 = hsl(348, 45, 39)
local color02 = hsl(318, 22, 27)
local color03 = hsl(221, 25, 27)
local color04 = hsl(219, 8, 47)
local color05 = hsl(20, 31, 58)
local color06 = hsl(186, 77, 80)
local color32 = hsl(202, 53, 76)
local color07 = hsl(291, 30, 17)
local color08 = hsl(32, 57, 73)
local color09 = hsl(33, 43, 81)
local color10 = hsl(81, 22, 59)
local color11 = hsl(10, 75, 78)
local color12 = hsl(198, 57, 88)
local color13 = hsl(195, 26, 58)
local color14 = hsl(190, 20, 34)
local color15 = hsl(42, 100, 71)
local color16 = hsl(31, 76, 61)
local color17 = hsl(353, 28, 35)
local color18 = hsl(156, 39, 72)
local color19 = hsl(223, 63, 33)
local color20 = hsl(10, 82, 64)
local color21 = hsl(272, 33, 76)
local color22 = hsl(251, 17, 50)
local color25 = hsl(127, 54, 8)
local color23 = hsl(14, 47, 68)
local color27 = hsl(154, 15, 67)
-- function
local color26 = hsl(102, 36, 73)
-- local var
local color28 = hsl(32, 73, 76)
-- parameter
local color24 = hsl(37, 100, 75)
--local color24 = hsl(38, 41, 75)
-- member var
local color29 = hsl(46, 30, 73)
-- static var
local color30 = hsl(38, 28, 67)
-- global var
local color31 = hsl(28, 43, 58)
local color33 = hsl(0, 32, 58)

local lavender   = hsl(244, 44, 72)
local lavender_l = hsl(244, 100, 89)
local lavender_d = hsl(250, 27, 51)

local blue       = hsl(197, 96, 72)
local blue_l     = hsl(197, 100, 85)
local blue_d     = hsl(201, 25, 66)

local aqua       = hsl(160, 55, 63)
local aqua_l     = hsl(170, 70, 80)
local aqua_d     = hsl(165, 37, 51)

local green      = hsl(118, 50, 63)
local green_l    = hsl(120, 94, 87)
local green_d    = hsl(130, 14, 55)

local lime       = hsl(77, 69, 63)
local lime_l     = hsl(95, 47, 85)
local lime_d     = hsl(85, 23, 55)

local gold       = hsl(45, 50, 75)
local gold_l     = hsl(40, 85, 79)
local gold_d     = hsl(45, 28, 57)

local orange     = hsl(25, 100, 82)
local orange_l   = hsl(25, 85, 79)
local orange_d   = hsl(25, 23, 61)

local peach      = hsl(16, 100, 80)
local peach_l    = hsl(16, 80, 74)
local peach_d    = hsl(14, 28, 57)

local red        = hsl(3, 87, 72)
local red_l      = hsl(3, 70, 82)
local red_d      = hsl(2, 33, 57)


local literal_fg = hsl(0, 0, 62)
local literal_bg = hsl(0, 0, 23)

local syn_noise = hsl(0, 0, 0)

local type_fg = blue_d
local storage_class_fg = syn_noise
local keyword_fg = syn_noise

local namespace_fg = type_fg

local function_fg = gold
-- local function_fg = red_l
local static_function_fg = function_fg
local member_function_fg = function_fg
local constructor_function_fg = function_fg

local global_var_fg = red_l
local static_var_fg = red_l
local member_var_fg = aqua_l
local parameter_fg = lime_l
local local_var_fg = lime_l


local theme = lush(function()
	print("inside theme function")
  return {
	-- LspCxxHlSymUnknown {},
	LspCxxHlGroupEnumConstant { fg = literal_fg, bg = literal_bg },

	LspCxxHlGroupNamespace { fg = namespace_fg },
	LspCxxHlSymNamespace { fg = namespace_fg },

	-- Storage/Access Modifiers
	cppStorageClass { fg = storage_class_fg },
	cStorageClass { fg = storage_class_fg },
	cppAccess { fg = storage_class_fg },

	-- Statements
	cppStatement { fg = keyword_fg },
	cStatement { cppStatement },
	cppModifier { cppStatement },
	cppStructure { cppStatement }, -- class keyword
	cStructure { cppStatement }, -- class keyword
	cRepeat { cppStatement }, -- loops
	cConditional { cppStatement },

	-- Noise
	Syntax_noise { fg = syn_noise, gui="bold" },

	-- Type
	cppType{ fg = type_fg },
	cType{ cppType },
	LspCxxHlSymClass{ cppType },
	LspCxxHlSymStruct{ cppType },
	LspCxxHlSymEnum{ cppType },
	LspCxxHlSymTypeAlias{ cppType },
	LspCxxHlSymTypedef { cppType },
	LspCxxHlSymTypeParameter{ cppType }, -- TODO change this
	LspCxxHlSymTemplateParameter{ cppType }, -- TODO change this
	LspCxxHlSymDependentName{ cppType }, -- TODO change this
	LspCxxHlSymPrimitive { cppType },

	-- Function
	LspCxxHlSymFunction { fg = function_fg, gui="bold" },
	LspCxxHlSymStaticMethod { fg = static_function_fg, gui="bold" },
	LspCxxHlSymConstructor { fg = constructor_function_fg, gui="bold" },
	LspCxxHlSymMethod { fg = member_function_fg, gui="bold" },

	-- EnumConstant
	LspCxxHlSymEnumMember { fg = hsl(0, 0, 62), bg = hsl(0, 0, 23) },

	-- Preprocessor
	LspCxxHlSymMacro {  },
	cPreProc {  },
	cInclude {  },
	cDefine {  },
	cPreCondit {  },

	-- Variables
	LspCxxHlSymVariable { fg = global_var_fg },
	LspCxxHlSymLocalVariable { fg = local_var_fg, gui="bold" },
	LspCxxHlSymFunctionVarible { LspCxxHlSymLocalVariable },
	LspCxxHlSymParameter { LspCxxHlSymLocalVariable },
	LspCxxHlGroupMemberVariable { fg = member_var_fg, gui="bold" },
	LspCxxHlSymClassVariableStatic { fg = static_var_fg },

	-- structured binding variable, anad global
	LspCxxHlSymUnknownVariableNone { LspCxxHlSymLocalVariable },
	-- LspCxxHlSymUnknownVariableStatic {  },
	-- LspCxxHlSymField {  },
	-- LspCxxHlGroupMemberVariable {  },
	-- LspCxxHlSymParameter {  },
	-- LspCxxHlSymFunctionVariable {  },
	-- LspCxxHlSymMethodVariable {  },
	-- LspCxxHlSymConstructorVariable {  },
	-- LspCxxHlSymStaticMethodVariable {  },

	--
	-- cComment {},
	-- cCommentL {},
  }
end)

return theme
