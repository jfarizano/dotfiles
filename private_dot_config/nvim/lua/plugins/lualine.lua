return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    opts = {
      theme = 'horizon',
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
