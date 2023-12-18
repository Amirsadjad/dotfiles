return {
    'andymass/vim-matchup',
    config = function()
        vim.b.match_words = '<:>,<tag>:</tag>'
        vim.g.matchup_matchparen_offscreen = {
            method = "popup"
        }

        require('nvim-treesitter.configs').setup {
            matchup = {
                enable = true,
                include_match_words = true
            }
        }        
    end
}
