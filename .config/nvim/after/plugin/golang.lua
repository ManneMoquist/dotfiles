require("go").setup({
	 goimport = 'gopls',
	 gofmt = 'gopls',
})
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
