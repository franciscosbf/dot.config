return {
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "bash",
          "html",
          "markdown",
          "markdown_inline",
          "javascript",
          "lua",
          "regex",
          "vim",
          "make",
          "cuda",
        })
      end
    end,
  },
}
