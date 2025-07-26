return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup({
      theme = 'hyper',
      config = {
        week_header = {
          enable = true,
        },
        project = {
          enable = true,
          action = function()
            require('fzf-lua').files()
          end,
          limit = 4,
        },
        shortcut = {
          {
            icon = '󰊳 ',
            icon_hl = '@variable',
            desc = 'Update plugins',
            group = '@property',
            action = 'Lazy update',
            key = 'u',
          },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = ' Find Files',
            group = '@property',
            action = function()
              require('fzf-lua').files()
            end,
            key = 'f',
          },
          {
            icon = ' ',
            desc = 'Git Commits',
            icon_hl = '@property',
            group = 'Number',
            action = function()
              require('fzf-lua').git_commits()
            end,
            key = 'd',
          },

          {
            icon = ' ',
            icon_hl = '@variable',
            group = 'Number',
            desc = ' Quit',
            action = function()
              vim.api.nvim_input('<cmd>qa<cr>')
            end,
            key = 'q',
          },
        },
      },
    })
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },

  -- Needed by Which-key plugin
  keys = {
    {
      '<leader>d',
      '<CMD>Dashboard<CR>',
      desc = 'Go to Dashboard',
    },
  },
}
