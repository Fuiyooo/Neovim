return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
          -- Paksa layout horizontal biar preview selalu di kanan
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              preview_width = 0.55, -- Ukuran jendela preview (55%)
              results_width = 0.8,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120, -- Preview ilang kalau layar terlalu sempit
          },
          -- Supaya previewer aktif secara default
          preview = true,
        },
      })

      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files (with Preview)" })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live Grep" })
    end,
  },
}
