-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- writer mode
vim.keymap.set('n', '<leader>ww', function()
  require('zen-mode').toggle {}
end, { desc = 'Toggle Zen Mode' })

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

-- oil keymap
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.autoindent = true

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    vim.opt_local.formatoptions:append 'r' -- `<CR>` in insert mode
    vim.opt_local.formatoptions:append 'o' -- `o` in normal mode
    vim.opt_local.comments = {
      'b:- [ ]', -- tasks
      'b:- [x]',
      'b:*', -- unordered list
      'b:-',
      'b:+',
    }
  end,
})

if vim.g.neovide then
  vim.o.guifont = 'FantasqueSansM Nerd Font:h14'

  vim.g.neovide_floating_blur_amount_x = 0.0
  vim.g.neovide_floating_blur_amount_y = 0.0

  vim.g.neovide_floating_shadow = false
end
