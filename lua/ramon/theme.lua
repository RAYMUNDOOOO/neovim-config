-- Note: Until I figure out a better way to switch themes on the fly and save
-- the configuration upon it being changed, I'll just comment out the ones I'm not using.

-- catppuccin 
--[[
require("catppuccin").setup({
	flavour = "mocha",
	background = {
		light = "latte",
		dark = "mocha",
	},
	transparent_background = true,
	show_end_of_buffer = false,
	term_colors = true,
	no_italic = true,
	no_bold = true,
	no_underline = true,
	styles = {
		comments = {},
		conditionals = {},
	},
})

vim.cmd.colorscheme "catppuccin"
--]]

-- everforest
everforest = require('everforest')
everforest.setup({
	background = "soft",
	transparent_background_level = 2,
	italics = false,
	disable_italic_comments = true,
	sign_column_background = "grey",
	ui_contrast = "high",
	diagnostic_text_highlight = true,
	diagnostic_virtual_text = "grey",
})
everforest.load()
