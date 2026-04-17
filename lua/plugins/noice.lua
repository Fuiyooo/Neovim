return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify", 
    },
    config = function()
      require("noice").setup({
        lsp = {
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.set_autocmds"] = true,
            ["table.unpack"] = true,
          },
        },
        presets = {
          bottom_search = false,
          command_palette = true,
          long_message_to_split = true, 
          inc_rename = false,
          lsp_doc_border = false,
        },
        -- INI BAGIAN FILTERNYA
        routes = {
          {
            filter = {
              event = "msg_show",
              any = {
                { find = "is deprecated" },
                { find = "vim.tbl_islist" },
                { find = "lspconfig" },
                { find = "lualine" },
              },
            },
            opts = { skip = true },
          },
        },
      })
    end,
  },
}
