-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    {
        'norcalli/nvim-colorizer.lua',
        opts = {
            css = {
                hsl_fn = true,
            },
        },
    },

    {
        'Pocco81/true-zen.nvim',
        opts = {
            modes = {
                ataraxis = {
                    padding = {
                        left = 60,
                        right = 60,
                    },
                },
            },
            integrations = {
                lualine = true,
            },
        },
    },

    {
        'mfussenegger/nvim-lint',
    },
    { 'mhartington/formatter.nvim', },
    { 'machakann/vim-sandwich', },
}

-- vim: ts=2 sts=2 sw=2 et
