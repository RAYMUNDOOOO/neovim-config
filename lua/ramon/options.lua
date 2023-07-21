local options = {
	backup = false,
	clipboard = "unnamedplus", 		-- Enables system clipboard.
	cmdheight = 0,				-- Height of cmd at bottom of screen.
	wrap = false,				-- Disables word wrapping.
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,
	fileencoding = "utf-8",
	hlsearch = false,
	pumheight = 10,				-- Pop-up menu height.
	smartcase = true,
	smartindent = true,
	splitbelow = true,			-- If splitting horizontally, always split below.
	splitright = true,			-- If splitting vertically, alows split right.
	swapfile = false,
	timeoutlen = 300,			-- Timeout time between registering inputs.
	undofile = true,
	updatetime = 300,
	shiftwidth = 4,
	tabstop = 4,
	cursorline = true,			-- Displays a line on the line the cursor is currently on.
	cursorlineopt = "number",
	number = true,				-- Line numbers in the gutter.
	relativenumber = true,			-- Relative line numbers in thegutter (useful for navigating).
	numberwidth = 4,
	signcolumn = "yes",			-- Column to the left of number gutter for displaying linting.
	scrolloff = 8,				-- Begin scrolling down when 8 lines away from the bottom.
	sidescrolloff = 8,			-- Begin scrolling to the right when 8 columns from the right edge.
	whichwrap = "bs<>[]hl",			-- Wrap between lines with these commands.
	guicursor = "a:block"			-- Always use a block cursor.
}

-- Apply the options above
for k, v in pairs(options) do 
	vim.opt[k] = v
end
