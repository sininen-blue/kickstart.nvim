return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		---@diagnostic disable-next-line: missing-fields
		require("gruvbox").setup({
			contrast = "soft",
			overrides = {},
		})
		vim.o.background = "dark"
		vim.cmd.colorscheme("gruvbox")
	end,
}
