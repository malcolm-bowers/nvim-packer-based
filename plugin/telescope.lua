local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = "[S]earch [F]iles in Telescope" })
vim.keymap.set('n', '<leader>sg', builtin.git_files, { desc = "[S]earch [G]it files in Telescope" })
vim.keymap.set('n', '<leader>ss', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "[S]earch [S]tring in Telescope" })
vim.keymap.set('n', '<leader>sr', builtin.lsp_references, { desc = "[S]earch [R]eferences in Telescope" })
vim.keymap.set('n', '<leader>sr', builtin.lsp_implementations, { desc = "[S]earch [I]mplementations in Telescope" })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = "[S]earch [D]iagnostics in Telescope" })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = "[S]earch [B]uffers in Telescope" })
vim.keymap.set('n', '<leader>sn', ':Telescope luasnip<CR>', { desc = "[S]earch S[n]ippets in Telescope" })
vim.keymap.set('n', '<leader>sk', ':Telescope keymaps<CR>', { desc = "[S]earch [K]eymaps in Telescope" })

require('telescope').setup({
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
        }
    }
})

require('telescope').load_extension('luasnip')
require("telescope").load_extension("ui-select")
