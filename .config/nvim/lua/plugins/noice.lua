return {
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        bottom_search = false,
        command_palette = false,
        long_message_to_split = true,
        inc_rename = true,
      },
      cmdline = {
        enabled = true,
        view = "cmdline",
      },
      notify = {
        enabled = true,
        view = "mini",
      },
    },
  },
}
