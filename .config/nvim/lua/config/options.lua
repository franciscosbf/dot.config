-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- add python dedicated environment with pynvim installed.
vim.g.python3_host_prog = "~/.config/nvim-env/bin/python3"

-- disable ruby provider
vim.g.loaded_ruby_provider = 0

-- disable perl provider
vim.g.loaded_perl_provider = 0

-- A TAB character looks like 4 spaces
vim.o.tabstop = 4
-- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.expandtab = true
-- Number of spaces inserted instead of a TAB character
vim.o.softtabstop = 4
-- Number of spaces inserted when indenting
vim.o.shiftwidth = 4
