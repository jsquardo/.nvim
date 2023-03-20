vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Treesitter-File-Browser
vim.keymap.set("n", "<leader>fr", "<CMD>Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fb", "<CMD>Telescope file_browser<CR>")
vim.keymap.set("n", "<leader>fw", "<CMD>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>ht", "<CMD>Telescope colorscheme<CR>")

-- FTerm
vim.keymap.set('n', '<leader>cm', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<leader>cm', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
