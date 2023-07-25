-- Installing new language servers
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
	local opts = {buffer = bufnr}

	-- Format the current buffer with 'gq'
	vim.keymap.set({'n', 'x'}, 'gq', function()
		vim.lsp.buf.format({async = false, timeout_ms = 10000})
	end, opts)
end)

lsp.ensure_installed({
	'clangd',
	'lua_ls',
	'marksman',
	'powershell_es',
})

-- Configuring lua_ls
require('lspconfig').lua_ls.setup ({
	diagnostics = {
		disable = {
			'trailing-space', 'lowercase-global' 
		}
	}
})
lsp.setup()
