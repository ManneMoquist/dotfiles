vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Let Packer update itself
	use 'wbthomason/packer.nvim'

	-- Colorscheme
	use 'marko-cerovac/material.nvim'

	-- QOL Plugins
	use 'kylechui/nvim-surround'

	-- NERDTree alternative
	use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', 
  },
  tag = 'nightly' 
}

	-- LSP and Autocomplete
	use 'neovim/nvim-lspconfig'
	use('nvim-treesitter/nvim-treesitter', {
		 run = ':TSUpdate'
	})
	use 'ms-jpq/coq_nvim'
end)
