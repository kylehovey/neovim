require('telescope').setup({
	defaults = {
    hoogle = {
      render = "treesitter",
      renders = {
        treesitter = {
          remove_wrap = false
        }
      }
    },
    layout_config = {
      vertical = {
        width = 0.5
      }
    }
  }
})

require('telescope').load_extension "file_browser"
require('telescope').load_extension "hoogle"

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>F', builtin.find_files, {})
vim.keymap.set('n', '<leader>G', builtin.git_status, {})
vim.keymap.set('n', '<leader>a', builtin.live_grep, {})
vim.keymap.set('n', '<leader>s', builtin.treesitter, {})
vim.keymap.set('n', '<leader>hg', ':Telescope hoogle list<CR>', {})
