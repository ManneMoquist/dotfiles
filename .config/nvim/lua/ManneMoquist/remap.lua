local nnoremap = require("ManneMoquist.remaphelper").nnoremap
local inoremap = require("ManneMoquist.remaphelper").inoremap

local telescope = require('telescope.builtin')

-- BASIC REMAPS FOR QUALITY OF LIFE
nnoremap(";", ":")

inoremap("jj", "<esc>")

-- Plugin Bindings
nnoremap("<leader><tab>", ":NvimTreeToggle<CR>")

nnoremap("<leader>lg", telescope.live_grep)
nnoremap("<leader>ff", telescope.find_files)
