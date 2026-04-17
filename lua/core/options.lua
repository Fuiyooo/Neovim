local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.termguicolors = true


vim.opt.clipboard = "unnamedplus"
vim.api.nvim_create_autocmd("User", {
    pattern = "LazyDone",
    callback = function()
        pcall(vim.cmd, "colorscheme catppuccin-mocha")
    end,
})
