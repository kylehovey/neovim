-- Slime
vim.g.slime_target = 'tmux'
vim.g.slime_default_config = {
	socket_name= "default",
	target_pane="{left-of}"
}
vim.g.slime_dont_ask_default = 1

-- Use '##' tags to define cells in Julia
vim.g.julia_cell_delimit_cells_by = 'tags'

-- Svelte
vim.g.vim_svelte_plugin_use_typescript = 1

-- LaTeX
vim.g.livepreview_previewer = 'open -a Preview'
vim.g.tex_conceal = "" -- Don't convert symbols
vim.g.Imap_FreezeImap = 1 -- And please don't add text I didn't type...
vim.g.Tex_ViewRule_pdf = 'evince 2>/dev/null'
vim.g.Tex_IgnoreLevel = 8 -- Stop the linter and warnings

-- Markdown
_G.markdown_fenced_languages = {'coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'typescript', 'bash'}

-- Versioning
vim.g.gitgutter_enabled = 1 -- Enable GitGutter by Default
vim.g.NERDTreeMinimalMenu = 1 -- Use minimal menu for NerdTree

-- Enable JSDoc syntax
vim.g.javascript_plugin_jsdoc = 1

-- Searching
vim.g.ackprg = 'ag --vimgrep' -- Use ag instead of ack
require('telescope').load_extension "file_browser"
require('telescope').setup({
	defaults = { layout_config = { vertical = { width = 0.5 }}}
})
