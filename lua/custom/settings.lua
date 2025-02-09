vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.autoindent = true

if vim.g.neovide then
  vim.o.guifont = 'FantasqueSansM Nerd Font:h14'

  vim.g.neovide_floating_blur_amount_x = 0.0
  vim.g.neovide_floating_blur_amount_y = 0.0

  vim.g.neovide_floating_shadow = false
end
