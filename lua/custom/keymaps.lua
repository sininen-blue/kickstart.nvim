-- oil keymap
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- word wraped navigation
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set('n', '<leader>wl', vim.cmd 'LspStop', { desc = 'Disable LSP' })
vim.keymap.set('n', '<leader>ww', require('zen-mode').toggle, { desc = 'Toggle Zen Mode' })

-- journal entry
vim.keymap.set('n', '<leader>wt', function()
  local time = tostring(os.date '## %B %d, %Y - %A')
  local strings = {
    time,
    '',
    '### gratitude section',
    '',
    '---',
  }
  vim.api.nvim_put(strings, 'l', false, true)
end, { desc = 'Append current time' })
