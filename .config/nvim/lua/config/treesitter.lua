local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

ts.setup({
    ensure_installed = { "lua", "vim", "javascript", "typescript", "python" },
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
})
