vim.pack.add({"https://github.com/folke/snacks.nvim"})

require("snacks").setup({
	opts = {
		lazygit = {}
	}
})

vim.keymap.set({ "n" }, "<leader>gl", function()
  require("snacks.lazygit").open()
end, { desc = "Open Lazygit" })
