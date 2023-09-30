return {
  -- neotest adapters.
  { "nvim-neotest/neotest-go" },
  { "nvim-neotest/neotest-python" },

  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "nvim-neotest/neotest-go",
      "nvim-neotest/neotest-python",
    },
    opts = {
      adapters = {
        ["neotest-go"] = {
          -- Here we can set options for neotest-go, e.g.
          -- args = { "-tags=integration" }
        },
        ["neotest-python"] = {
          python = vim.g.python3_host_prog,
        },
      },
    },
  },
}
