-- Vim Configuration

-- Disable mode display, e.g -- INSERT --
-- vim.opt.showmode = false

-- disable netrw at the very start of your init.lua
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- Disable compatibility with old-time vi
vim.o.nocompatible = true

-- Set width
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.numberwidth = 1

-- Ignore case in search mode with smartcase
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable mouse support
vim.opt.mouse = 'a'

-- Show line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Speed up scrolling
vim.opt.ttyfast = true

-- Disable swap file creation
vim.opt.swapfile = false

vim.opt.termguicolors = true
