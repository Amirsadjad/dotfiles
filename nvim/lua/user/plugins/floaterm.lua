return {
  'voldikss/vim-floaterm',
  keys = {
    { '<leader>`', ':FloatermToggle<CR>' },
    { '<leader>`', '<C-\\><C-n>:FloatermToggle<CR>', mode = 't' },
  },
  cmd = { 'FloatermToggle' },
  init = function()
    vim.g.floaterm_width = 1.1
    vim.g.floaterm_height = 1.1
    vim.cmd([[
        highlight link Floaterm CursorLine
        highlight link FloatermBorder CursorLineBg
    ]])
  end,
}