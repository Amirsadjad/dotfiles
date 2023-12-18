return {
    'glepnir/dashboard-nvim',
    opts = { 
        theme = 'doom',
        config = {
            header = {
            '',
            '',
            '',
            '      ⣿⣿⣿⣿⣿⣿⣿⣶⣄      ',
            '      ⢸⣿⣿⣦⡈⠻⣿⣿⣿⣷⣄    ',
            '⣀⣀⣀⣀⣀⣀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄  ',
            '⠈⠻⣿⣿⣿⣿⣿⡿⠿⠛⠁   ⠈⠻⢿⣿⣿⣷⣄',
            '',
            '',
            },
            center = {
            { icon = '  ', desc = 'New file', action = 'enew' },
            { icon = '  ', desc = 'Find file               ', key = 'Space + f', action = 'Telescope find_files' },
            { icon = '󱝕  ', desc = 'Recent files            ', key = 'Space + h', action = 'Telescope oldfiles' },
            { icon = '  ', desc = 'Find Word               ', key = 'Space + g', action = 'Telescope live_grep' },
            },
            footer = { '' }
        },
        hide = {
            statusline = false,
            tabline = false,
            winbar = false,
        }
    },
    init = function()
        vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#9090CC' })
        vim.api.nvim_set_hl(0, 'DashboardDesc', { fg = '#3f8fb0' })
        vim.api.nvim_set_hl(0, 'DashboardIcon', { fg = '#D0D6B5' })
        vim.api.nvim_set_hl(0, 'DashboardKey', { fg = '#eb6f92' })
        vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = '#9090CC' }) 
    end
}