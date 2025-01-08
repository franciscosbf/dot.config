return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            procMacro = {
              ignored = {
                ["async-trait"] = {},
                ["napi-derive"] = {},
                ["async-recursion"] = {},
              },
            },
          },
        },
      },
    },
  },
}
