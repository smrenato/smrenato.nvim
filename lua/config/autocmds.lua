-- auto commands loaded by lazyvim

-- helper function
local function auto_group(name)
  return vim.api.nvim_create_augroup("myconf_" .. name, { clear = true })
end

-- Highlight text for some time after yanking
vim.api.nvim_create_autocmd("TextYankPost", {
    group = auto_group("highlight_yank"),
    pattern = "*" ,
    callback = function()
        (vim.hl or vim.highlight).on_yank({ timeout = 200 })
    end,
    desc = "Highlight on Yank",
})
