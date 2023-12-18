return {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    dependencies = {'arkav/lualine-lsp-progress', 'nvim-tree/nvim-web-devicons'},
    opts = {
        options = {
            section_separators = '',
            component_separators = '',
            globalstatus = true,
            theme = {
                normal = {
                    a = 'StatusLine',
                    b = 'StatusLine',
                    c = 'StatusLine'
                }
            }
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', {
                'diff',
                symbols = {
                    added = ' ',
                    modified = ' ',
                    removed = ' '
                }
            }, function()
                return '󰅭 ' .. vim.pesc(tostring(#vim.tbl_keys(vim.lsp.buf_get_clients())) or '')
            end, {
                'diagnostics',
                sources = {'nvim_diagnostic'}
            }},
            lualine_c = {'filename'},
            lualine_x = {{
                require("lazy.status").updates,
                cond = require("lazy.status").has_updates,
                color = {
                    fg = "#ff9e64"
                }
            }},
            lualine_y = {'filetype', 'encoding', 'fileformat',
                         '(vim.bo.expandtab and "␠ " or "⇥ ") .. vim.bo.shiftwidth'},
            lualine_z = {'searchcount', 'selectioncount', 'location', 'progress'}
        }
    }
}


-- local separator = { 
--     '"▏"', 
--     color = 'StatusLineNonText' 
-- }
-- local l_separator = {'""'}
-- local r_separator = {'""'}

-- require('lualine').setup({
--   options = {
--     section_separators = '',
--     component_separators = '',
--     globalstatus = true,
--     theme = {
--       normal = {
--         a = 'StatusLine',
--         b = 'StatusLine',
--         c = 'StatusLine',
--       },
--     },
--   },
--   sections = {
--     lualine_a = {
--       'mode',
--       separator,
--     },
--     lualine_b = {
--       'branch',
--       'diff',
--       separator,
--       function ()
--         return '🖧  ' .. vim.pesc(tostring(#vim.tbl_keys(vim.lsp.buf_get_clients())) or '')
--       end,
--       { 'diagnostics', sources = { 'nvim_diagnostic' } },
--       separator,
--     },
--     lualine_c = {
--       'filename'
--     },
--     lualine_x = {
--       'filetype',
--       'encoding',
--       'fileformat',
--     },
--     lualine_y = {
--       separator,
--       '(vim.bo.expandtab and "␠ " or "⇥ ") .. " " .. vim.bo.shiftwidth',
--       separator,
--     },
--     lualine_z = {
--       'location',
--       'progress',
--     },
--   },
-- })
