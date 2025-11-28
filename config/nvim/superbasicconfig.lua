-- this is a super basic config with no plugins and no keybindings,
-- just use it inside nvim folder and change the name to init.lua

-- line number
vim.o.number = true
vim.o.relativenumber = true

-- syntax highlight
vim.cmd("syntax on")

-- file type
vim.cmd("filetype plugin indent on")

-- mouse support
vim.o.mouse = "a"

-- system clipboard
vim.o.clipboard = "unnamedplus"

-- set tabs to spaces and define identation
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- highlight current line
vim.o.cursorline = true

-- incremental search and highlighting
vim.o.incsearch = true
vim.o.hlsearch = true
