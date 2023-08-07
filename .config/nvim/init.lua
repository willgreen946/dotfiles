-- Function for setting keybinds
local map = vim.keymap.set

-- Function for startup options
local opt = vim.cmd

-- Some nice keybinds 
map("n", "<C-s>", "<Cmd>split | terminal<CR>")
map("n", "<C-p>", "<Cmd>Lexplore<CR>")

-- Set the line number color
vim.api.nvim_set_hl(0, 'LineNr', {fg = white} )

-- Setup options
opt("syntax off")
opt("set laststatus=3")
opt("set number")
