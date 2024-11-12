return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
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
