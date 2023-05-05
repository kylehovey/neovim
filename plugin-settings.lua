-- Slime
-- We are using tmux as the slime recipient
vim.g.slime_target = 'tmux'
-- Tmux slime config
vim.g.slime_default_config = {
	socket_name= "default",
	target_pane="{left-of}"
}
-- Don't ask to send by default
vim.g.slime_dont_ask_default = 1

-- Julia
-- Use '##' tags to define cells
vim.g.julia_cell_delimit_cells_by = 'tags'

-- Svelte
-- Enable Typescript
vim.g.vim_svelte_plugin_use_typescript = 1

-- LaTeX
-- Set Preview As the Default LaTeX Viewer
vim.g.livepreview_previewer = 'open -a Preview'
-- Don't convert symbols
vim.g.tex_conceal = ""
-- And please don't add text I didn't type...
vim.g.Imap_FreezeImap = 1
-- Send errors to black hole
vim.g.Tex_ViewRule_pdf = 'evince 2>/dev/null'
-- Stop the linter and warnings
vim.g.Tex_IgnoreLevel = 8

-- Markdown
-- Code Blocks
_G.markdown_fenced_languages = {'coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'typescript', 'bash'}

-- Versioning
-- Enable GitGutter by Default
vim.g.gitgutter_enabled = 1
-- Use minimal menu for NerdTree
vim.g.NERDTreeMinimalMenu = 1

-- JS
-- Enable JSDoc syntax
vim.g.javascript_plugin_jsdoc = 1

-- ACK/AG
-- Use ag instead of ack
vim.g.ackprg = 'ag --vimgrep'

-- Searching
-- Telescope
require('telescope').load_extension "file_browser"
require('telescope').setup({
	defaults = {
		layout_config = {
			vertical = {
				width = 0.5
			}
		}
	}
})
