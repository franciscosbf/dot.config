-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- add line length marker
vim.opt.colorcolumn = "80"

-- add python dedicated environment with pynvim installed.
vim.g.python3_host_prog = "~/.config/nvim-env/bin/python3"

-- disable ruby provider
vim.g.loaded_ruby_provider = 0

-- disable perl provider
vim.g.loaded_perl_provider = 0
