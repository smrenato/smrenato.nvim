-- Colorscheme from [Kanagawa]https://github.com/rebelot/kanagawa.nvim

return {
    'rebelot/kanagawa.nvim',
    -- opts = {}
    config = function()
        require('kanagawa').setup({
            compile = true, -- enable compiling the colorscheme
        })

        -- setup must be called before loading
        vim.cmd("colorscheme kanagawa")
    end,

    -- build the theme whenever it updates, because compile=true
    build = ":KanagawaCompile"
}
