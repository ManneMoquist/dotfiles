vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	 -- Let Packer update itself
	 use 'wbthomason/packer.nvim'

	 -- Colorscheme
	 use 'marko-cerovac/material.nvim'
	 use 'sainnhe/gruvbox-material'

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
	 
	 use 'williamboman/mason.nvim'
	 use 'williamboman/mason-lspconfig.nvim'

	 use 'neovim/nvim-lspconfig'
	 use('nvim-treesitter/nvim-treesitter', {
			run = ':TSUpdate'
	 })
	 use 'nvim-treesitter/nvim-treesitter-context'
	 use 'ms-jpq/coq_nvim'
	 -- LSP error window and neater error preview in window
	 use 'folke/trouble.nvim'
	 use 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'


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

	 -- Mind Plugin, should try to use this one more for notes
	 use 'phaazon/mind.nvim'
	 
	 -- GOD TPOPE HOW COULD I HAVE MISSED THIS PLUG
	 use 'tpope/vim-surround'

	 -- Gitsigns
	 use 'lewis6991/gitsigns.nvim'

end)
