return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    config = function()
      require("gruvbox").setup({
        italic = {
          strings = false,
          comments = false,
          operators = false,
          folds = false,
        },
      })
      vim.o.background = "dark"
    end,
  },

  -- add gruvbox material
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    config = function()
      vim.o.background = "dark"
      vim.g.gruvbox_material_background = "medium"
      vim.g.gruvbox_material_better_performance = 1
    end,
  },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
