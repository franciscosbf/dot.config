-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable autoformat for rust, go, c and cuda files.
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "rust", "go", "c", "cuda" },
  callback = function()
    vim.b.autoformat = false
  end,
})
