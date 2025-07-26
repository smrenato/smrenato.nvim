-- make sure mason will finde executable correctly
require('core.mason-path')
require('config.mason-verify')
-- require("config.health-check")

-- Init lazy.vim
require('config.lazy')

-- ensure all lsp are installed before starting
require('core.lsp')
