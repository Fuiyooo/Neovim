local keymap = vim.keymap
keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Buka file explorer

-- Telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope - Find file' })
keymap.set('n', '<leader>ps',function()
    builtin.gre_string({ search = vim.fn.input("Grep > ") })
end, { desc = ' Telescope - Find text/string' })

-- Exit terminal
keymap.set("t", "<Esc>", "<C-\\><C-n>")
