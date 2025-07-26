-- refer to lsp folder on the root directory

vim.lsp.enable({
  'lua-ls',
  'rust-analyzer',
})

-- Diagnostics
vim.diagnostic.config({
  -- Use the default configuration
  -- virtual_lines = true

  -- Alternatively, customize specific options
  virtual_lines = {
    -- Only show virtual line diagnostics for the current cursor line
    current_line = true,
  },
})

-- On Attach lsp on buffer
-- vim.api.nvim_create_autocmd('LspAttach', {
--     -- group = auto_group("lsp_attach"),
--     callback = function(ev)
--         local client = vim.lsp.get_client_by_id(ev.data.client_id) -- take lsp
--         if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
--             vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
--             vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
--             vim.keymap.set('i', '<C-Space>', function()
--                 vim.lsp.completion.get()
--             end)
--         end
--     end,
-- })

-- Border rounded on lsp hover
local hover = vim.lsp.buf.hover
vim.lsp.buf.hover = function()
  return hover({
    max_width = 100,
    max_height = 14,
    border = 'rounded',
  })
end

-- Setup blink capabilities for all lsp

-- This is copied straight from blink
-- https://cmp.saghen.dev/installation#merging-lsp-capabilities
local capabilities = {
  textDocument = {
    foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    },
  },
}

capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)

vim.lsp.config('*', {
  capabilities = capabilities,
  root_markers = { '.git' },
})
