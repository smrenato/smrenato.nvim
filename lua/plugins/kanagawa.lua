-- Colorscheme from [Kanagawa]https://github.com/rebelot/kanagawa.nvim

return {
    'rebelot/kanagawa.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    -- opts = {}
    config = function()
        require('kanagawa').setup({
            compile = true, -- enable compiling the colorscheme


            -- custom tree-sitter queries 
            overrides=function(colors)
                return {
                    ["@markup.link.url.markdown_inline"] = { link = "Special" }, -- (url)
                    ["@markup.link.label.markdown_inline"] = { link = "WarningMsg" }, -- [label]
                    ["@markup.italic.markdown_inline"] = { link = "Exception" }, -- *italic*
                    ["@markup.raw.markdown_inline"] = { link = "String" }, -- `code`
                    ["@markup.list.markdown"] = { link = "Function" }, -- + list
                    ["@markup.quote.markdown"] = { link = "Error" }, -- > blockcode
                    ["@markup.list.checked.markdown"] = { link = "WarningMsg" } -- - [X] checked list item
                }
            end


        })

        -- setup must be called before loading
        vim.cmd("colorscheme kanagawa")
    end,

    -- build the theme whenever it updates, because compile=true
    build = ":KanagawaCompile"
}
