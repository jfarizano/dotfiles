return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      on_attach = function ()
        -- Makes signs bg transparent in signcolumn
        vim.cmd[[highlight GitSignsAdd guibg=NONE]]
        vim.cmd[[highlight GitSignsChange guibg=NONE]]
        vim.cmd[[highlight GitSignsDelete guibg=NONE]]
      end
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
