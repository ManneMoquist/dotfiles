local lsp = require('lspconfig')
local coq = require('coq')

local on_attach = function(client, bufnr) 
	 vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

lsp.gopls.setup{
	 coq.lsp_ensure_capabilities{ 
			cmd = {'gopls'},
			settings = { 
				 gopls = { experimentalPostfixCompletions = true, analyses = { unusedparams = true, shadow = true, }, staticcheck = true, },
			},
	 on_attach = on_attach,
}}

lsp['rust_analyzer'].setup{
	 coq.lsp_ensure_capabilities {
			on_attach = on_attach,
			settings = {
				 ["rust-analyzer"] = {}
			}
	 }
}

lsp.solargaph.setup{
	 coq.lsp_ensure_capabilities{ 
	 on_attach = on_attach,
}}
