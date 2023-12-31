local status_ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
	return
end

treesitter.setup {
	ensure_installed = { 
		'c',
		'lua',
		'vim',
		'vimdoc'
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true
	}
}
