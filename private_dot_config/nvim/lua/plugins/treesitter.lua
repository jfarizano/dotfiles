return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup {
        -- A list of parser names
        ensure_installed = { "c", "lua", "vim", "vimdoc", "markdown", "query", "rust", "go", "cpp", "csv", "dockerfile", "erlang", "haskell_persistent", "python", "sql", "bash" },
        -- Autoinstall languages that are not installed
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      }

    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
