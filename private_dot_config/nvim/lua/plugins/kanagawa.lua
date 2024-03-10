return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000, -- make sure to load this before all the other start plugins
    init = function()
      -- Load the colorscheme here.
      vim.cmd.colorscheme 'kanagawa-wave'

      -- You can configure highlights by doing something like
      vim.cmd.hi 'Comment gui=none'
    end,
    opts = {
      transparent = true,
    },
    overrides = function(colors)
      local theme = colors.theme
      return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },

          -- Save an hlgroup with dark background and dimmed foreground
          -- so that you can use it where your still want darker windows.
          -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

          -- Popular plugins that open floats will link to NormalFloat by default;
          -- set their background accordingly if you wish to keep them dark and borderless
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et

