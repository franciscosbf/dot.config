return {
  -- load markdown preview
  {
    "iamcco/markdown-preview.nvim",
    event = "BufRead",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    config = function()
      vim.g.mkdp_theme = "dark"
    end,
  },
}
