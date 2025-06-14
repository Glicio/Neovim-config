return {
	'nvim-treesitter/nvim-treesitter',
	event = 'BufRead',
	config = function()
		require('nvim-treesitter.configs').setup {
			ensure_installed = {
				'lua',
				'markdown',
				'json',
				'html',
				'css',
				'javascript',
				'typescript',
				'tsx',
				'graphql',
				'yaml',
				'python',
				'rust',
				'java',
				'c',
				'cpp',
				'go',
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = 'gnn',
					node_incremental = 'grn',
					scope_incremental = 'grc',
					node_decremental = 'grm',
				},
			},
		}
	end,
}	
