return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      return {
        options = { theme = "gruvbox" },
      }
    end,
  },
}
