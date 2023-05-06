require('rose-pine').setup({
    disable_background = true
})

_G.gruvbox_material_background = 'original'
_G.gruvbox_material_foreground = 'original'

function ColorScheme(color, transparent_bg)
	color = color or 'gruvbox-material'
  transparent_bg = transparent_bg or false
	vim.cmd.colorscheme(color)

  if transparent_bg then
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end
end

ColorScheme()
