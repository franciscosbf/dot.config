return {
  -- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
  -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
  { import = "lazyvim.plugins.extras.lang.json" },

  -- add animations
  { import = "lazyvim.plugins.extras.ui.mini-animate" },

  -- add go language
  { import = "lazyvim.plugins.extras.lang.go" },

  -- add c language
  { import = "lazyvim.plugins.extras.lang.clangd" },

  -- add python language
  { import = "lazyvim.plugins.extras.lang.python" },
}
