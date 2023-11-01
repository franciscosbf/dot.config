-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable autoformat for rust, go, c, cuda and sh files.
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "rust", "go", "c", "cuda", "sh" },
  callback = function()
    vim.b.autoformat = false
  end,
})
