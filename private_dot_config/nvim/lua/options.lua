-- Make line numbers default
vim.opt.number = true
-- add relative line numbers, for help with jumping.
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true
vim.opt.smartindent = true

-- Tab = 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Save undo history
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Disable file.swp files
vim.opt.swapfile = false
vim.opt.backup = false

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Decrease update time
vim.opt.updatetime = 50
vim.opt.timeoutlen = 100

-- Disable wrap
vim.opt.wrap = false

-- Disable highlight after search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Nice colors
vim.opt.termguicolors = true

-- ??
vim.opt.isfname:append("@-@")

-- Line at column 80
vim.opt.colorcolumn = "80"

-- vim: ts=2 sts=2 sw=2 et
