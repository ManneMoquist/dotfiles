-- Line numbering TODO: Change on insert mode enter
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 3

vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.g.mapleader = " "

vim.g.coq_settings = { auto_start = true}
