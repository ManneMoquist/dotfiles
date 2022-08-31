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

	 -- Telescope for fuzzy finding
	 use {
			'nvim-telescope/telescope.nvim',
			requires = { {'nvim-lua/plenary.nvim'} }
	 }

	 -- LSP and Autocomplete
	 use 'neovim/nvim-lspconfig'
	 use('nvim-treesitter/nvim-treesitter', {
			run = ':TSUpdate'
	 })
	 use 'ms-jpq/coq_nvim'

	 -- Lualine for more beautiful status line
	 use {
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	 }
	 
	 --LANGUAGE SPECIFIC PLUGS: GO
	 use {
			'ray-x/go.nvim',
			requires = { 'ray-x/guihua.lua'} -- recommanded if need floating window support
	 }

	 use 'phaazon/mind.nvim'
	 

end)
