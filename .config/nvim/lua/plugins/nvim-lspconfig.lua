return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              semanticTokens = false,
              usePlaceholders = false,
              staticcheck = false,
            },
          },
        },
        clangd = {
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "hpp" },
        },
      },
      inlay_hints = { enabled = false },
      setup = {
        gopls = function(_, _)
          -- remove workaround https://www.lazyvim.org/extras/lang/go#nvim-lspconfig
          -- contains buggy code for something I don't even use and care.
        end,
      },
    },
  },
}
