return {
    "mason-org/mason.nvim",
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        },
          ensure_installed = {
                -- LSP servers (matching your vim.lsp.enable() config)
                "lua-language-server",         -- Lua LSP
                "rust-analyzer",               -- Rust LSP
                "html-lsp",                    -- HTML LSP

                -- Formatters (for conform.nvim and general use)
                "stylua",
                -- Note: gofmt comes with Go installation, not managed by Mason
                "prettier",

                -- Linters and diagnostics
                -- "luacheck", -- Lua linting

                -- Additional useful tools
                "shfmt",      -- Shell formatter
                "shellcheck", -- Shell linter

                -- Optional but useful additions
                "markdownlint", -- Markdown linting
                "yamllint",     -- YAML linting
                "jsonlint",     -- JSON linting
            },
    },
}
