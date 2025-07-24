--  Project.nvim understand the root directory your project from [Project.nvim](https://github.com/ahmedkhalf/project.nvim)

return {
    "ahmedkhalf/project.nvim",
    config = function() 

        require("project_nvim").setup({

            manual_mode = false,
            detection_methods = { "lsp", "pattern" },
            patterns = { 
                ".git",
                "_darcs",
                ".hg",
                ".bzr",
                ".svn",
                "Makefile",
                "package.json",
                "Cargo.toml",
                "pyproject.toml",
                "README.md",
                ".venv",
            },
        })

    end,
}
