return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Editor motions and objects
	use 'tpope/vim-surround'
	use 'tpope/vim-repeat'
	use 'tomtom/tcomment_vim'

	-- File browsing and searching
	use {
		'nvim-telescope/telescope.nvim', tag='0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'nvim-telescope/telescope-file-browser.nvim'
  use 'psiska/telescope-hoogle.nvim'
  use 'nvim-tree/nvim-tree.lua'

	-- Language Server/AST Support
	use {
		'neoclide/coc.nvim',
		branch = 'release'
	}
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'nvim-treesitter/playground'

	-- Language Support
	use 'lilydjwg/colorizer'
	use 'pbrisbin/vim-syntax-shakespeare'
	-- use 'tpope/vim-rails'
	use 'alx741/yesod.vim'
  use { 'ndmitchell/ghcid', rtp = 'plugins/nvim' }
	-- use 'jpalardy/vim-slime'
	-- use 'mroavi/vim-julia-cell'
	-- use 'kdheepak/JuliaFormatter.vim'
	use 'vimwiki/vimwiki'
	-- use 'timtro/glslView-nvim'
	use 'pantharshit00/vim-prisma'
	use 'vim-latex/vim-latex'

	-- Versioning
	use 'tpope/vim-fugitive'
	use 'airblade/vim-gitgutter'
	use 'zivyangll/git-blame.vim'
	use 'kdheepak/lazygit.nvim'

	-- Color Schemes
  use 'sainnhe/gruvbox-material'
  use 'sainnhe/everforest'

	-- Visual/Information UX
	use 'lukas-reineke/indent-blankline.nvim'
  use 'famiu/feline.nvim'
	use 'ryanoasis/vim-devicons'
	use 'ruanyl/vim-gh-line'
	use 'nvim-tree/nvim-web-devicons'
  use 'mbbill/undotree'
end)
