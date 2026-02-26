vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

-- [[ Setting options ]]
vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = "a"
vim.o.showmode = false
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.o.inccommand = "split"
vim.o.cursorline = true
vim.o.scrolloff = 5

vim.o.confirm = true

vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.autoindent = true

vim.diagnostic.config({
	update_in_insert = false,
	severity_sort = true,
	float = { border = "rounded", source = "if_many" },
	underline = { severity = vim.diagnostic.severity.ERROR },

	virtual_text = true, -- Text shows up at the end of the line
	virtual_lines = false, -- Teest shows up underneath the line, with virtual lines

	jump = { float = true },
})
