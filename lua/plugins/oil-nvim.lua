-- oil.nvim file explorer from [oil.nvim] https://github.com/stevearc/oil.nvim

return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        float = {
            -- Padding around the floating window
            padding = 2,
            -- max_width and max_height can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
            max_width = 0.7,
            max_height = 0.8,
            border = "rounded",
            win_options = {
                winblend = 0,
            }
        },
        -- keymaps = {
        -- ["q"] = { "actions.close", mode = "n" },
        --
        -- }
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
}
