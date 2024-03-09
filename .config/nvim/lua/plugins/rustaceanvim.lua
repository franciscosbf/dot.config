return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            lens = { enable = false },
            inlayHints = false,
          },
        },
      },
      dap = {
        configuration = {
          name = "Rust debug client",
          type = "codelldb",
          request = "launch",
          stopOnEntry = false,
          lldb = { showDisassembly = "never" },
        },
      },
    },
  },
}
