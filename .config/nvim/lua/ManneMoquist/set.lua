-- Line numbering TODO: Change on insert mode enter
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.mouse = "a"
vim.opt.wrap = false

vim.opt.tabstop = 2
vim.opt.shiftwidth = 3

vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 8

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.laststatus = 3

vim.g.mapleader = " "

vim.g.coq_settings = {
	 auto_start = true,
	 ["display.pum.fast_close"] = false,
}

vim.opt.hlsearch = false
