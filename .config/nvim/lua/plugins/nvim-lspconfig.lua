return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          keys = {
            -- change default key binds.
            { "<leader>ar", "<cmd>RustHoverActions<cr>", desc = "Hover Actions (Rust)" },
            { "<leader>cR", "<cmd>RustCodeAction<cr>", desc = "Code Action (Rust)" },
            { "<leader>dr", "<cmd>RustDebuggables<cr>", desc = "Run Debuggables (Rust)" },
          },
          settings = {
            ["rust-analyzer"] = {
              -- get rid of inlay hints and lens.
              inlayHints = {
                chainingHints = { enable = false },
                closingBraceHints = { enable = false },
                parameterHints = { enable = false },
                renderColons = { enable = false },
                typeHints = { enable = false },
              },
              lens = { enable = false },
            },
          },
        },
      },
    },
  },
}
