-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<leader>bp", "<cmd>BufferLineTogglePin<cr>", { desc = "Toggle pin" })
map("n", "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<cr>", { desc = "Delete non-pinned buffers" })
map("n", "<A-,>", "<cmd>BufferLineCyclePrev<cr>")
map("n", "<A-.>", "<cmd>BufferLineCycleNext<cr>")
map("n", "<A-<>", "<cmd>BufferLineMovePrev<cr>")
map("n", "<A->>", "<cmd>BufferLineMoveNext<cr>")
map("n", "<A-1>", "<cmd>BufferLineGoToBuffer  1<cr>")
map("n", "<A-2>", "<cmd>BufferLineGoToBuffer  2<cr>")
map("n", "<A-3>", "<cmd>BufferLineGoToBuffer  3<cr>")
map("n", "<A-4>", "<cmd>BufferLineGoToBuffer  4<cr>")
map("n", "<A-5>", "<cmd>BufferLineGoToBuffer  5<cr>")
map("n", "<A-6>", "<cmd>BufferLineGoToBuffer  6<cr>")
map("n", "<A-7>", "<cmd>BufferLineGoToBuffer  7<cr>")
map("n", "<A-8>", "<cmd>BufferLineGoToBuffer  8<cr>")
map("n", "<A-9>", "<cmd>BufferLineGoToBuffer  9<cr>")
map("n", "<A-0>", "<cmd>BufferLineGoToBuffer -1<cr>")
map("n", "<A-c>", "<cmd>BufferLinePickClose<cr>")

map("n", "<leader>n", function()
  Snacks.notifier.show_history()
end, { desc = "Show notification history" })
