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
        -- stylua: ignore
        close_command = function(n) require("mini.bufremove").delete(n, false) end,
        -- stylua: ignore
        right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
        diagnostics = "nvim_lsp",
        always_show_bufferline = false,
        diagnostics_indicator = function(_, _, diag)
          local icons = require("lazyvim.config").icons.diagnostics
          local ret = (diag.error and icons.Error .. diag.error .. " " or "")
            .. (diag.warning and icons.Warn .. diag.warning or "")
          return vim.trim(ret)
        end,
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "left",
          },
        },
        style_preset = {
          require("bufferline").style_preset.minimal,
          require("bufferline").style_preset.no_italic,
        },
      },
    },
  },
}
