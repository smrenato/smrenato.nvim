require('config.globals')
require('config.options')
require('config.keymap')
require('config.autocmd')

-- language server conf related
require('core.lsp')

-- Init lazyVim to install some addiontional plugins
require("config.lazy")
