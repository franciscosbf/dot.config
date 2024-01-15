return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              -- get rid of lens.
              lens = { enable = false },
            },
          },
        },
      },
    },
  },
}
