return {
  -- add gruvbox-baby
  {
    "luisiacc/gruvbox-baby",
    lazy = true,
    branch = "main",
    config = function()
      vim.g.gruvbox_baby_background_color = "medium"
      vim.g.gruvbox_baby_use_original_palette = true
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
