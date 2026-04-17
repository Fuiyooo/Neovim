return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- Logo ASCII (Ditambah baris kosong di atas biar ke tengah)
      dashboard.section.header.val = {
        "", "", "", "", "", -- Tambah/kurang baris kosong ini buat ngatur tinggi
        [[      ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗      ]],
        [[      ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║      ]],
        [[      ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║      ]],
        [[      ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║      ]],
        [[      ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║      ]],
        [[      ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝      ]],
        "",
      }

      -- Menu Buttons
      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find File", ":Telescope find_files <CR>"),
        dashboard.button("r", "  Recent Files", ":Telescope oldfiles <CR>"),
        dashboard.button("s", "  Settings", ":e $MYVIMRC <CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>"),
      }

      -- Footer
      dashboard.section.footer.val = "Arch Linux | Neovim v0.12.1"
      dashboard.section.footer.opts.hl = "Comment"

      alpha.setup(dashboard.config)
    end,
  },
}
