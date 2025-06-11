local servers = {
	"luals",
	"typescript-language-server",
	"pyright",
	"bashls",
	"jsonls",
	"vscode-eslint-language-server",
	"emmet-language-server",
	"yamlls",
	"eslint",
	"tailwindcss-language-server",
	"gopls",
}

for _, server in ipairs(servers) do
	vim.lsp.enable(server)
	vim.lsp.config(server, {
		on_init = function()
			vim.notify("Initialized " .. server, vim.log.levels.INFO, {
				title = "lsp",
				icon = "",
			})
		end,
	})
end



vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
		spacing = 4,
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

return servers
