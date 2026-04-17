return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        filesystem = {
          follow_current_file = { enabled = true },
          use_libuv_file_watcher = true,
        },
        window = {
          width = 35,
          mappings = {
            -- Tekan P sekali untuk buka preview melayang, 
            -- lalu jendela itu akan update otomatis saat kamu pindah kursor
            ["P"] = { "toggle_preview", config = { use_float = true, use_image_preview = true } },
            ["l"] = "open",
            ["h"] = "close_node",
          },
        },
      })

      vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = "Explorer NeoTree", silent = true })
    end
  },
}
