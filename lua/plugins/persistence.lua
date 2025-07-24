-- Manage sessions with [persistence.nvim](https://github.com/folke/persistence.nvim)
return {
  "folke/persistence.nvim",
  event = "BufReadPre",
  opts = {},
  -- stylua: ignore
  keys = {
    { "<leader>sr", function() require("persistence").load() end, desc = "Restore Session" },
    { "<leader>ss", function() require("persistence").select() end,desc = "Select Session" },
    { "<leader>sl", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
    { "<leader>sS", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
  },
}
