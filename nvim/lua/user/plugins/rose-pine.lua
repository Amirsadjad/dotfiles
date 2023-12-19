return {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    opts = {
        variant = 'moon',
    },
    config = function()
        -- Floating Windows
        vim.api.nvim_set_hl(0, 'FloatermBorder', {
            fg = '#2a283d',
            bg = '#2a283d'
        })

        -- Telescope
        vim.api.nvim_set_hl(0, 'CursorLineBg', {
            fg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
            bg = vim.api.nvim_get_hl_by_name('CursorLine', true).background
        })

        -- Nvim-Tree
        -- vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', {
        --     fg = '#30323e'
        -- })

        -- IndentLines
        vim.api.nvim_set_hl(0, 'IblIndent', {
            fg = '#2F313C'
        })

        -- LuaLine Rose Pine
        vim.api.nvim_set_hl(0, 'StatusLineNonText', {
            fg = '#3c395e',
            bg = vim.api.nvim_get_hl_by_name('StatusLine', true).background
        })

        -- LuaLine Carbon Theme
        -- vim.api.nvim_set_hl(0, 'StatusLineNonText', {
        --     fg = '#273b60',
        --     bg = '#1c2a44'
        -- })

        -- vim.api.nvim_set_hl(0, 'StatusLine', { bg = '#1c2a44' })

        vim.cmd('colorscheme rose-pine-moon')
    end
}