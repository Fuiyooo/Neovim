local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- Pakai pcall (protected call) supaya nggak bikin nvim merah semua kalau gagal
local status_mason, mason = pcall(require, "mason")
if status_mason then
    mason.setup({})
end

local status_mason_lsp, mason_lsp = pcall(require, "mason-lspconfig")
if status_mason_lsp then
    mason_lsp.setup({
        handlers = {
            function(server_name)
                require('lspconfig')[server_name].setup({})
            end,
        },
    })
end
