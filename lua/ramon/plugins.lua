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
end)
