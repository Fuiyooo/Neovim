return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      local autopairs = require("nvim-autopairs")

      autopairs.setup({
        check_ts = true, -- Gunakan Treesitter buat ngecek (biar gak error di string/comment)
        ts_config = {
          lua = { "string" }, -- Gak bakal autopair di dalam string lua
          javascript = { "template_string" },
        },
      })

      -- Integrasi dengan nvim-cmp
      -- Biar pas kamu pilih fungsi di autocomplete, kurungnya lgsg keisi bener
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp = require("cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },
}
