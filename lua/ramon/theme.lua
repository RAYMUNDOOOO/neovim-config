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
require('everforest').load()
