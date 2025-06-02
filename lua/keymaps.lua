local map = vim.keymap.set

-- leader key
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>sg", ":Telescope live_grep<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")
map("n", "<leader>fh", ":Telescope help_tags<CR>")
map("n", "<leader>fo", ":Telescope oldfiles<CR>")
map("n", "<leader>fc", ":Telescope colorscheme<CR>")
map("n", "<leader>fw", ":Telescope grep_string<CR>")
map("n", "<leader>fm", ":Telescope marks<CR>")
map("n", "<leader>fr", ":Telescope registers<CR>")
map("n", "<leader>fs", ":Telescope spell_suggest<CR>")

-- window navigation
map("n", "<C-h>", ":Neotree<CR>")
map("n", "<C-l>", ":wincmd l<CR>")
map("n", "<C-j>", ":wincmd j<CR>")
map("n", "<C-k>", ":wincmd k<CR>")

--buffer navigation
map("n", "L", ":BufferNext<CR>")
map("n", "H", ":BufferPrevious<CR>")
map("n", "<leader>bo", ":BufferCloseAllButCurrent<CR>")
map("n", "<leader>bd", ":BufferClose<CR>")
-- neo-tree
map("n", "<leader>e", ":Neotree toggle<CR>")

-- neoformat
map("n", "<F3>", ":Neoformat<CR>")

-- lsp
map("n", "K", function()
	print("K")
  vim.lsp.buf.hover()
end)

-- misc
map("n", "<esc>", ":noh<CR>")


