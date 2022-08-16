local lsp = require('lspconfig')
local coq = require('coq')

local on_attach = function(client, bufnr) 
	 vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	 local bufopts = { noremap=true, silent=false, buffer=bufnr }
	 vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
	 vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	 vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
	 vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
	 vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
	 vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
	 vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
	 vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	 vim.keymap.set('n', '<leader>=', vim.lsp.buf.formatting, bufopts)
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
