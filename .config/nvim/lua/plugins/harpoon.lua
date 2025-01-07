-- List of favorite files/marks per project
return {
  -- https://github.com/ThePrimeagen/harpoon
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  event = 'VeryLazy',
  dependencies = {
    -- https://github.com/nvim-lua/plenary.nvim
    'nvim-lua/plenary.nvim',
  },
  opts = {
    menu = {
      width = 120
    }
  },
  -- Keymaping
  config = function()
            local harpoon = require("harpoon")

            harpoon:setup()

            vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
            vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end)
            vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end)
            vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end)
            vim.keymap.set("n", "<leader>h5", function() harpoon:list():select(5) end)
            vim.keymap.set("n", "<leader>h6", function() harpoon:list():select(6) end)
            vim.keymap.set("n", "<leader>h7", function() harpoon:list():select(7) end)
            vim.keymap.set("n", "<leader>h8", function() harpoon:list():select(8) end)
            vim.keymap.set("n", "<leader>h9", function() harpoon:list():select(9) end)
            vim.keymap.set("n", "<leader>H1", function() harpoon:list():replace_at(1) end)
            vim.keymap.set("n", "<leader>H2", function() harpoon:list():replace_at(2) end)
            vim.keymap.set("n", "<leader>H3", function() harpoon:list():replace_at(3) end)
            vim.keymap.set("n", "<leader>H4", function() harpoon:list():replace_at(4) end)
            vim.keymap.set("n", "<leader>H5", function() harpoon:list():replace_at(5) end)
            vim.keymap.set("n", "<leader>H6", function() harpoon:list():replace_at(6) end)
            vim.keymap.set("n", "<leader>H7", function() harpoon:list():replace_at(7) end)
            vim.keymap.set("n", "<leader>H8", function() harpoon:list():replace_at(8) end)
            vim.keymap.set("n", "<leader>H9", function() harpoon:list():replace_at(9) end)
        end
}