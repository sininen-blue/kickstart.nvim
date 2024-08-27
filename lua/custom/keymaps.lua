-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- writer mode
vim.keymap.set('n', '<leader>ww', function()
  require('zen-mode').toggle {}
end, { desc = 'Toggle Zen Mode' })

-- oil keymap
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

vim.opt.wrap = false
