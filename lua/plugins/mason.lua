local servers = require("config.lsp")
return {
	"mason-org/mason.nvim",
	opts = {
		ensure_installed = servers,
	},
}
