-- Indent-blank-lines adds indentations guide to neovim from [Indent-blank-lines](https://github.com/lukas-reineke/indent-blankline.nvim)

local highlight = {
  'CursorColumn',
  'Whitespace',
}

return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    -- indent = { highlight = highlight, char = "" },
    -- whitespace = {
    --     highlight = highlight,
    --         remove_blankline_trail = false,
    -- },
    -- scope = { enabled = false },

    exclude = { filetypes = { 'dashboard', 'text' } },
  },
}
