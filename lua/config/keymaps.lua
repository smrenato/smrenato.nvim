-- Oil keymaps
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Oil open parent directory" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "Scrolling page down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true, desc = "Scrolling page up and center" })
