vim.cmd("set tabstop=2") -- a tab is equal to 2 spaces
vim.cmd("set softtabstop=2") -- show tabs as 2 spaces
vim.cmd("set shiftwidth=2") -- 2 space indentation
vim.cmd("set expandtab") -- convert tabs to spaces

vim.cmd("set nohlsearch")

vim.cmd("set nowrap")

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.cmd("set colorcolumn=81")
vim.cmd("set listchars=eol:↩,tab:—➜,trail:~,extends:>,precedes:<")
vim.cmd("set list")

vim.g.mapleader = " "

vim.keymap.set("v", "<leader>y", '"+y', {})
vim.keymap.set("n", "<leader>p", '"+p', {})
