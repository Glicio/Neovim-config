--emmet-ls

return {
	cmd = { "emmet-language-server", "--stdio" },
	filetypes = {
		"typescript",
		"typescriptreact",
		"javascript",
		"javascriptreact",
		"json",
		"html",
		"css",
		"less",
		"scss",
		"vue",
	},
  root_markers = {'package.json', '.git', '.yarnrc', 'tsconfig.json'},
}
