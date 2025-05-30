return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		local map = vim.keymap.set
		map("n", "<leader>a", function()
			vim.notify("Added to harpoon", vim.log.levels.INFO, {
				title = "harpoon",
			})
			harpoon:list():add()
		end)

		map("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		map("n", "<leader>h", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		map("n", "<C-t>", function()
			harpoon:list():select(2)
		end)
		map("n", "<C-n>", function()
			harpoon:list():select(3)
		end)
		map("n", "<C-s>", function()
			harpoon:list():select(4)
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		map("n", "<C-S-P>", function()
			harpoon:list():prev()
		end)
		map("n", "<C-S-N>", function()
			harpoon:list():next()
		end)
	end,
}
