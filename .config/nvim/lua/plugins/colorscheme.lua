return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- add gruvbox material
  {
    "sainnhe/gruvbox-material",
    dependencies = {
      "sheerun/vim-polyglot",
      "nvim-treesitter/nvim-treesitter",
    },
    lazy = true,
    config = function()
      -- TODO:

      -- WARN:

      -- INFO:
      vim.o.background = "dark"
      vim.g.gruvbox_material_background = "medium"
      vim.g.gruvbox_material_foreground = "hard"
      vim.g.gruvbox_material_better_performance = 1
    end,
  },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
