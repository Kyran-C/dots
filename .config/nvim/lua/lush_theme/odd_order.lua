
local lush = require('lush')
local hsl = lush.hsl

local cpp = require('lush_theme.cpp')
local base_theme = require('lush_theme.odd_order_base')
local spec = {base_theme, cpp}

local theme = lush.merge(spec)

return theme
