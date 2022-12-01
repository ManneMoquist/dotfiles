local nnoremap = require("ManneMoquist.remaphelper").nnoremap
local inoremap = require("ManneMoquist.remaphelper").inoremap
local tnoremap = require("ManneMoquist.remaphelper").tnoremap

local telescope = require('telescope.builtin')

-- BASIC REMAPS FOR QUALITY OF LIFE
nnoremap(";", ":")
nnoremap("<C-c>", "<cmd>noh|cclose|redraw<CR>")

inoremap("jj", "<esc>")

-- Plugin Bindings
nnoremap("<leader><tab>", "<cmd>NvimTreeToggle<CR>")

nnoremap("<leader>fg", telescope.live_grep)
nnoremap("<leader>ff", telescope.find_files)
nnoremap("<leader>fb", telescope.buffers)
nnoremap("<leader>fs", telescope.spell_suggest)
nnoremap("<leader>fr", telescope.lsp_references)
nnoremap("<leader>fw", telescope.diagnostics)

tnoremap("<leader><leader>c","<C+\\><C+n>:q<CR>")
