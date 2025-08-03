vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.autoindent = true

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = { 'en_us' }
  end,
})

vim.keymap.set('n', 'gh', vim.lsp.buf.code_action, { desc = 'Show Spelling/Grammar Suggestions' })
