local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		-- 'Enter' key to confirm completion
		['<CR>'] = cmp.mapping.confirm({ select = true }),

		-- CTRL + SPACE to trigger completion menu
		['<C-Space>'] = cmp.mapping.complete(),

		-- Abort the completion menu
		['<C-e>'] = cmp.mapping.abort(),

		-- Navigate between snippet placeholder
		['<C-l>'] = cmp_action.luasnip_jump_forward(),
		['<C-h>'] = cmp_action.luasnip_jump_backward(),

		-- Scroll through suggestions
		['<C-k>'] = cmp.mapping.select_prev_item(),
		['<Tab>'] = cmp.mapping.select_next_item(),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	},
	{
		{ name = 'buffer' },
	})
})
