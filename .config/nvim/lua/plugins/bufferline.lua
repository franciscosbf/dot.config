return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
      -- Move to previous/next
      { "<A-,>", "<Cmd>BufferLineCyclePrev<CR>" },
      { "<A-.>", "<Cmd>BufferLineCycleNext<CR>" },
      -- Re-order to previous/next
      { "<A-<>", "<Cmd>BufferLineMovePrev<CR>" },
      { "<A->>", "<Cmd>BufferLineMoveNext<CR>" },
      -- Goto buffer in position...
      { "<A-1>", "<Cmd>BufferLineGoToBuffer  1<CR>" },
      { "<A-2>", "<Cmd>BufferLineGoToBuffer  2<CR>" },
      { "<A-3>", "<Cmd>BufferLineGoToBuffer  3<CR>" },
      { "<A-4>", "<Cmd>BufferLineGoToBuffer  4<CR>" },
      { "<A-5>", "<Cmd>BufferLineGoToBuffer  5<CR>" },
      { "<A-6>", "<Cmd>BufferLineGoToBuffer  6<CR>" },
      { "<A-7>", "<Cmd>BufferLineGoToBuffer  7<CR>" },
      { "<A-8>", "<Cmd>BufferLineGoToBuffer  8<CR>" },
      { "<A-9>", "<Cmd>BufferLineGoToBuffer  9<CR>" },
      { "<A-0>", "<Cmd>BufferLineGoToBuffer -1<CR>" },
      -- Close buffer pick
      { "<A-c>", "<Cmd>BufferLinePickClose<CR>" },
    },
    opts = {
      options = {
        style_preset = {
          require("bufferline").style_preset.minimal,
          require("bufferline").style_preset.no_italic,
        },
      },
    },
  },
}
