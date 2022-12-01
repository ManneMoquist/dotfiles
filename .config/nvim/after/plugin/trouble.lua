local nnoremap = require("ManneMoquist.remaphelper").nnoremap

require'trouble'.setup {
	 icons = false,
	 fold_open = 'v',
	 fold_closed = '>',
	 indent_lines = false,
	 signs = {
			error = 'E',
			warning = 'W',
			hint = 'H',
			information = 'I',
	 },
	 use_diagnostic_signs = false,
	 auto_preview = false,
}

nnoremap('<leader>t', '<cmd>TroubleToggle<cr>')
