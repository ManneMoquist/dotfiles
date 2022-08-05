local nnoremap = require("ManneMoquist.remaphelper").nnoremap
local inoremap = require("ManneMoquist.remaphelper").inoremap

-- BASIC REMAPS FOR QUALITY OF LIFE
nnoremap(";", ":")

inoremap("jj", "<esc>")


-- Plugin Bindings
nnoremap("<leader><tab>", ":NvimTreeToggle<CR>")
