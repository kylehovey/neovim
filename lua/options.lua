-- ================ SYSTEM ================
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'
vim.opt.belloff = 'all'
vim.opt.shell = 'zsh'
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.updatetime = 250

-- =============== VIEW SETTINGS ===============
vim.opt.background = 'dark' -- Background
vim.opt.nu = true -- Enable Line Numbering
vim.opt.lbr = true -- Wrap text
vim.opt.visualbell = true -- Use a Visual Bell
vim.opt.cmdheight = 1 -- Minimize Command Window Height
vim.opt.ruler = true -- Display Cursor Position
vim.opt.termguicolors = true -- 24 bit color

-- =============== EDITOR OPTIONS ===============
vim.opt.foldmethod = 'indent' -- Fold Based Upon Indent
vim.opt.foldnestmax = 10 -- Deepest Fold Allowed Is 10 Levels
vim.opt.foldenable = false -- Don't Fold by Default
vim.opt.foldlevel = 1 -- Allow Folding At One Line
vim.opt.autoindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
