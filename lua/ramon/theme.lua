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
