require('telescope').load_extension "file_browser"
require('telescope').setup({
	defaults = { layout_config = { vertical = { width = 0.5 }}}
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>F', builtin.find_files, {})
vim.keymap.set('n', '<leader>G', builtin.git_status, {})
vim.keymap.set('n', '<leader>a', builtin.live_grep, {})
