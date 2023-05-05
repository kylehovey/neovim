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
	use 'scrooloose/nerdtree'

	-- Language Server/AST Support
	use {
		'neoclide/coc.nvim',
		branch = 'release'
	}
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	-- Individual Language Support
	use 'sheerun/vim-polyglot'
	use 'lilydjwg/colorizer'
	use 'alx741/yesod.vim'
	use 'pbrisbin/vim-syntax-shakespeare'
	use 'tpope/vim-rails'
	use 'posva/vim-vue'
	use 'leafOfTree/vim-svelte-plugin'
	use 'elm-tooling/elm-vim'
	use 'vim-latex/vim-latex'
	use 'vim-pandoc/vim-pandoc'
	use 'vim-pandoc/vim-pandoc-syntax'
	use 'JuliaEditorSupport/julia-vim'
	use 'mroavi/vim-julia-cell'
	use 'jpalardy/vim-slime'
	use 'kdheepak/JuliaFormatter.vim'
	use 'plasticboy/vim-markdown'
	use 'vimwiki/vimwiki'
	use 'timtro/glslView-nvim'
	use 'pantharshit00/vim-prisma'

	-- Versioning
	use 'tpope/vim-fugitive'
	use 'airblade/vim-gitgutter'
	use 'Xuyuanp/nerdtree-git-plugin'
	use 'zivyangll/git-blame.vim'
	use 'kdheepak/lazygit.nvim'

	-- Color Schemes
	use 'morhetz/gruvbox'

	-- Visual/Information UX
	use 'lukas-reineke/indent-blankline.nvim'
	use 'vim-airline/vim-airline'
	use 'ryanoasis/vim-devicons'
	use 'ruanyl/vim-gh-line'
	use 'nvim-tree/nvim-web-devicons'
end)
