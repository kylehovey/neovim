local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Editor motions and objects
	use 'tpope/vim-surround'
	use 'tpope/vim-repeat'
	use 'tomtom/tcomment_vim'

	-- File browsing and searching
	use {
		'nvim-telescope/telescope.nvim', tag='0.1.4',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-tree/nvim-tree.lua'

	-- Language Server/AST Support
	use {
		'neoclide/coc.nvim',
		branch = 'release'
	}

	use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
	use 'nvim-treesitter/playground'

	-- Language Support
	use 'lilydjwg/colorizer'
	use 'pbrisbin/vim-syntax-shakespeare'
	use 'tpope/vim-rails'
	use 'alx741/yesod.vim'
	use 'jpalardy/vim-slime'
	use 'mroavi/vim-julia-cell'
	use 'kdheepak/JuliaFormatter.vim'
	-- use 'vimwiki/vimwiki'
	use 'timtro/glslView-nvim'
  use 'tikhomirov/vim-glsl'
	use 'pantharshit00/vim-prisma'
	use 'vim-latex/vim-latex'

	-- Versioning
	use 'tpope/vim-fugitive'
	use {
    'airblade/vim-gitgutter',
    branch = 'main'
  }
	use 'zivyangll/git-blame.vim'
	use 'kdheepak/lazygit.nvim'

	-- Color Schemes
  use 'sainnhe/gruvbox-material'
  use { "ellisonleao/gruvbox.nvim" }
  use 'sainnhe/everforest'
  use { "catppuccin/nvim", as = "catppuccin" }
  use {
    "2nthony/vitesse.nvim",
    requires = { "tjdevries/colorbuddy.nvim" }
  }

	-- Visual/Information UX
	use 'lukas-reineke/indent-blankline.nvim'
  use 'famiu/feline.nvim'
	use 'ryanoasis/vim-devicons'
	use 'ruanyl/vim-gh-line'
	use 'nvim-tree/nvim-web-devicons'
  use 'mbbill/undotree'

  -- Presentations
  use 'sotte/presenting.nvim'
  -- use 'MeanderingProgrammer/render-markdown.nvim'
end)
