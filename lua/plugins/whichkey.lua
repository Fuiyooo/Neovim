return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300 -- Durasi nunggu (ms) sampe pop-up muncul
    end,
    opts = {
      -- Kamu bisa kosongi dulu buat pake settingan default yang udah pinter
    },
  },
}
