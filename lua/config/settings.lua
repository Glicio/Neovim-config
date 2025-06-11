vim.g.mapleader = " "
-- setting clipboard to copy to system clipboard
vim.opt.clipboard = "unnamedplus"

-- use tab for indentation
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- set number of columns to show
vim.opt.number = true
vim.opt.numberwidth = 4

-- no backup files
vim.opt.swapfile = false
vim.opt.backup = false

-- undo 
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"

-- set relative number
vim.opt.relativenumber = true

-- set backspace to delete indentation
vim.opt.backspace = "indent,eol,start"

-- set whichwrap
vim.opt.whichwrap = "b,s,h,l,<,>,[,],~"

-- set ignorecase
vim.opt.ignorecase = true

-- set smartcase
vim.opt.smartcase = true

-- set hlsearch
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- set colors
vim.opt.termguicolors = true

-- set cursorline
vim.opt.cursorline = true

-- set scrolloff
vim.opt.scrolloff = 8

-- set foldmethod
vim.opt.foldmethod = "indent"

-- set foldlevel
vim.opt.foldlevel = 99

-- set foldcolumn
vim.opt.foldcolumn = "0"

-- set colorcolumn
vim.opt.colorcolumn = "80"

-- disable wrapping
vim.opt.wrap = false
--#region
