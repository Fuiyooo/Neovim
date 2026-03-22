local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- 1. Theme
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- 2. Dashboard (Gaya Maddatone/Block)
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local alpha = require('alpha')
            local dashboard = require('alpha.themes.dashboard')
            dashboard.section.header.val = {
                [[                                            ]],
                [[  ██████╗     ██╗    ███╗   ███╗    ███████╗            ]],
                [[  ██╔══██╗    ██║    ████╗ ████║    ██╔════╝            ]],
                [[  ██║  ██║    ██║    ██╔████╔██║    █████╗              ]],
                [[  ██║  ██║    ██║    ██║╚██╔╝██║    ██╔══╝              ]],
                [[  ██████╔╝    ██║    ██║ ╚═╝ ██║    ███████╗            ]],
                [[  ╚═════╝     ╚═╝    ╚═╝     ╚═╝    ╚══════╝            ]],
                [[                                            ]],
            }
            dashboard.section.buttons.val = {
                dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
                dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
                dashboard.button("q", "󰅚  Quit", ":qa<CR>"),
            }
            alpha.setup(dashboard.opts)
        end
    },

    -- 3. Status Bar
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({ options = { theme = 'catppuccin' } })
        end
    },

    -- 4. Treesitter (Tanpa blok config di sini biar nggak error)
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },

    -- 5. Telescope & Lainnya
    { 'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' } },
    { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        },
    }
})

vim.cmd[[colorscheme catppuccin]]
