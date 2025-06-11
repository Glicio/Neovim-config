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

--start eslint
vim.api.nvim_create_user_command("EslintStart", function()
	local server = require("config.lsp.vscode-eslint-language-server")
	local client_id = vim.lsp.start(server)
	print("Started eslint LSP server with client id: " .. client_id)
end, {})

--stop eslint
vim.api.nvim_create_user_command("EslintStop", function()
	for _, client in pairs(vim.lsp.get_clients()) do
		if client.name == "vscode-eslint-language-server" then
			client:stop(false)
			print("Stopped LSP server: " .. client.name)
		end
	end
end, {})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local opts = { buffer = args.buf }

		vim.keymap.set("n", "<C-Space>", "<C-x><C-o>", opts)
		vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
		vim.keymap.set({ "n", "x" }, "gq", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)

		vim.keymap.set("n", "grt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
		vim.keymap.set("n", "grd", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
	end,
})

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
