-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'folke/zen-mode.nvim',
    opts = {
      window = {
        backdrop = 1, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
        width = 85, -- width of the Zen window
        height = 1, -- height of the Zen window
        options = {
          signcolumn = 'no', -- disable signcolumn
          number = false, -- disable number column
          relativenumber = false, -- disable relative numbers
          cursorline = false, -- disable cursorline
          cursorcolumn = false, -- disable cursor column
          foldcolumn = '0', -- disable fold column
          list = false, -- disable whitespace characters
        },
      },
      on_open = function()
        vim.opt.wrap = true
        vim.opt.linebreak = true
        vim.opt.spell = true
        vim.opt.spelllang = { 'en_us' }

        vim.cmd.colorscheme 'catppuccin-mocha'
      end,
    },
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'brenoprata10/nvim-highlight-colors',
    init = function()
      require('nvim-highlight-colors').setup {}
    end,
  },

  {
    'OXY2DEV/markview.nvim',
    lazy = false, -- Recommended
    -- stylua: ignore
    keys = {
      { "<leader>wm", function() vim.cmd("Markview") end, desc = "Toggle Markview" },
      { "<leader>ws", function() vim.cmd("Markview splitToggle") end, desc = "Toggle markview split toggle" },
    },

    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },

    opts = {
      list_items = {
        indent_size = 1,
        shift_width = 1,
      },
    },
  },

  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },

  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    keys = {
      -- stylua: ignore
      {'<leader>gl', function() require("snacks").lazygit.open() end, desc = 'Lazygit'},
    },
    opts = {
      dashboard = { enabled = true },
      indent = { enabled = true },
      lazygit = { enabled = true },
      scroll = {
        enabled = true,
        animate = {
          easing = 'outQuint',
        },
      },
    },
  },

  { 'f3fora/cmp-spell' },
}
