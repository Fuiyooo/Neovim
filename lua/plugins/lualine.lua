return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          -- Kita matiin dulu separator yang pake karakter aneh
          component_separators = "", 
          section_separators = "",
          globalstatus = true,
        },
        -- Biarkan sections pake default bawaan lualine dulu
      })
    end,
  },
}
