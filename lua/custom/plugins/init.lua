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
    opts = {
      keymaps = {
        ['g?'] = { 'actions.show_help', mode = 'n' },
        ['<CR>'] = 'actions.select',
        ['<C-s>'] = { 'actions.select', opts = { vertical = true } },
        -- ['<C-h>'] = { 'actions.select', opts = { horizontal = true } },
        ['<C-t>'] = { 'actions.select', opts = { tab = true } },
        ['<C-p>'] = 'actions.preview',
        ['<C-c>'] = { 'actions.close', mode = 'n' },
        -- ['<C-l>'] = 'actions.refresh',
        ['-'] = { 'actions.parent', mode = 'n' },
        ['_'] = { 'actions.open_cwd', mode = 'n' },
        ['`'] = { 'actions.cd', mode = 'n' },
        ['~'] = { 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
        ['gs'] = { 'actions.change_sort', mode = 'n' },
        ['gx'] = 'actions.open_external',
        ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
        ['g\\'] = { 'actions.toggle_trash', mode = 'n' },
      },
      use_default_keymaps = false,
    },
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
      dashboard = {
        enabled = true,
        preset = {
          keys = {
            { icon = ' ', key = 'f', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
            { icon = ' ', key = 'n', desc = 'New File', action = '<CMD>Oil<CR>' },
            { icon = ' ', key = 'g', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = ' ', key = 'c', desc = 'Config', action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = ' ', key = 's', desc = 'Restore Session', section = 'session' },
            { icon = '󰒲 ', key = 'L', desc = 'Lazy', action = ':Lazy', enabled = package.loaded.lazy ~= nil },
            { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
          },
        },
        sections = {
          { section = 'header' },
          { section = 'keys', gap = 1 },
          { icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = { 2, 2 } },
          { icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 2 },
          { section = 'startup' },
        },
      },
      quickfile = { enabled = true },
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
  {
    'fraso-dev/nvim-listchars',
    event = 'BufEnter',
    opts = {
      save_state = false,
      listchars = {
        trail = '-',
        eol = '↲',
        tab = '» ',
        space = '·',
      },
      notifications = true,
      exclude_filetypes = {
        'markdown',
      },
      lighten_step = 10,
    },
  },
}
