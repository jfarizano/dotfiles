-- File explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Explore files'})

-- Move selected lines, with indenting
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Move selected block down with indenting'})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Move selected block up with indenting'})

-- Takes line below and appends it to current line with a space, w/o moving cursor
vim.keymap.set("n", "J", "mzJ`z", { desc = 'Append line below to current one'})

-- Half page jumping, keeping cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = 'Half page [d]own'})
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = 'Half page [u]p'})

-- Keeps search term in the middle
vim.keymap.set("n", "n", "nzzzv", { desc = 'Search for next ocurrence'})
vim.keymap.set("n", "N", "Nzzzv", { desc = 'Search for previous ocurrence'})

-- Paste into selected without replacing into buffer
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = '[P]aste into selection w/o replacing buffer'})
-- Deletes selected without replacing into buffer
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = '[D]eletes w/o replacing buffer'})

-- Copy selection into OS clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = '[Y]ank selection into OS clipboard'})
-- Copy line into OS clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = '[Y]ank line into OS clipbaord'})

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = 'Same as Esc'})

-- Replaces word where cursor is
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[R]eplace [W]ord in whole file' })

-- Makes current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = 'Make current file e[x]ecutable', silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
