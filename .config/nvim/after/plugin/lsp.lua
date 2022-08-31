local lsp = require('lspconfig')
local coq = require('coq')
local nnoremap = require("ManneMoquist.remaphelper").nnoremap

local function splitbind(first, second)
	 vim.cmd('vsplit')
end

local on_attach = function(client, bufnr) 
	 vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	 local bufopts = { noremap=true, silent=false, buffer=bufnr }
	 nnoremap('gD', vim.lsp.buf.declaration)
	 nnoremap('gd', vim.lsp.buf.definition, bufopts)
	 nnoremap('gsd', ":vsplit | lua vim.lsp.buf.definition()<CR>", bufopts)
	 nnoremap('K', vim.lsp.buf.hover, bufopts)
	 nnoremap('gi', vim.lsp.buf.implementation, bufopts)
	 nnoremap('<leader>D', vim.lsp.buf.type_definition, bufopts)
	 nnoremap('<leader>rn', vim.lsp.buf.rename, bufopts)
	 nnoremap('<leader>ca', vim.lsp.buf.code_action, bufopts)
	 nnoremap('gr', vim.lsp.buf.references, bufopts)
	 nnoremap('<leader>=', vim.lsp.buf.formatting, bufopts)
end

lsp.gopls.setup{
	 coq.lsp_ensure_capabilities{ 
			cmd = {'gopls'},
			settings = { 
				 gopls = { experimentalPostfixCompletions = true, analyses = { unusedparams = true, shadow = true, }, staticcheck = true, },
			},
	 },
	 on_attach = on_attach,
}

lsp['rust_analyzer'].setup{
	 coq.lsp_ensure_capabilities {
			settings = {
				 ["rust-analyzer"] = {}
			}
	 },
	 on_attach = on_attach
}

lsp.solargraph.setup{
	 coq.lsp_ensure_capabilities{ 
			settings = {
				 solargraph = {}
			}
	 },
	 on_attach = on_attach,

}
