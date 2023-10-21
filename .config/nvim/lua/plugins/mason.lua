return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "shellcheck")
      table.insert(opts.ensure_installed, "shfmt")
    end,
  },
}
