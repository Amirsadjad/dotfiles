require('user/options')
require('user/keymaps')
require('user.misc')
require('user/plugins')

-- Enable Intelephense LSP in Blade files
vim.api.nvim_exec([[
  autocmd FileType php setlocal omnifunc=v:lua.vim.lsp.omnifunc
  autocmd FileType html setlocal omnifunc=v:lua.vim.lsp.omnifunc
  autocmd FileType blade setlocal omnifunc=v:lua.vim.lsp.omnifunc
]], false)
