local nnoremap = require('ManneMoquist.remaphelper').nnoremap

local function toggle_lines()
	 local active = vim.diagnostic.config()["virtual_lines"]
	 vim.diagnostic.config({virtual_lines = not active})
	 vim.diagnostic.config({virtual_text = active})
end

local lsp_lines = require('lsp_lines')
lsp_lines.setup()
toggle_lines()

nnoremap('<leader>l', toggle_lines)
