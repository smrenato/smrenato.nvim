-- auto commands loaded by lazyvim

-- helper function
local function auto_group(name)
  return vim.api.nvim_create_augroup("myconf_" .. name, { clear = true })
end

-- Highlight text for some time after yanking
vim.api.nvim_create_autocmd("TextYankPost", {
  group = auto_group("highlight_yank"),
  pattern = "*",
  callback = function()
    (vim.hl or vim.highlight).on_yank({ timeout = 200 })
  end,
  desc = "Highlight on Yank",
})

-- attach lsp on buffer
vim.api.nvim_create_autocmd('LspAttach', {
  -- group = auto_group("lsp_attach"),
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id) -- take lsp
    if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
      vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
      vim.keymap.set('i', '<C-Space>', function()
        vim.lsp.completion.get()
      end)
    end
  end,
})
