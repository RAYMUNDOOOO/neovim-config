-- Configuration found here: https://github.com/wbthomason/packer.nvim
vim.cmd [[packadd packer.nvim]]

-- Have Packer use a popup window
local packer = require('packer')
packer.init({
	display = {
		open_fn = function()
			return require('packer.util').float({ border = 'rounded' })
		end,
	},
})

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- LSP configuration (https://github.com/VonHeikemen/lsp-zero.nvim)
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP support
			{ 'neovim/nvim-lspconfig' },
			{
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Auto completion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	}

	use { 'saadparwaiz1/cmp_luasnip' }
	use { 'hrsh7th/cmp-path' }

	-- Better syntax highlighting (https://github.com/nvim-treesitter/nvim-treesitter)
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- Themes because the default terminal one makes me blind!
	use { 'catppuccin/nvim', as = 'catppuccin' }

	use({
		"neanias/everforest-nvim",
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			require("everforest").setup()
		end,
	})

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
end)
