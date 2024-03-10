return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup({
        settings = {
            save_on_toggle = true,
            sync_on_ui_close = true,
        },
      })
      vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = '[A]dd file to harpoon list}'})
      vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Show harpoon list'})

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end, { desc = 'Toggle previous in Harpoon List'})
      vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, { desc = 'Toggle next in Harpoon List'})
    end
  },
}
-- vim: ts=2 sts=2 sw=2 et
