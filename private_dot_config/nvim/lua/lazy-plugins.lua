-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins, you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- modular approach: using `require 'path/name'` will
  -- include a plugin definition from file lua/path/name.lua

  -- Detect tabstop and shiftwidth automatically
  require 'plugins/sleuth',

  -- "gc" to comment visual regions/lines
  require 'plugins/comment',

  require 'plugins/gitsigns',

  require 'plugins/which-key',

  require 'plugins/telescope',

  require 'plugins/lspconfig',

  require 'plugins/cmp',

  require 'plugins/kanagawa',

  require 'plugins/todo-comments',

  require 'plugins/mini',

  require 'plugins/treesitter',

  require 'plugins/indent_line',

  require 'plugins/harpoon',

  require 'plugins/undotree',

  require 'plugins/autopairs',

  require 'plugins/transparent',

  require 'plugins/virtcolumn',

  require 'plugins/lualine',

}, {
  ui = {
    -- If you have a Nerd Font, set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
