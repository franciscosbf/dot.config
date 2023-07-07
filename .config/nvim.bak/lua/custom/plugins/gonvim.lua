return {
  'ray-x/go.nvim',
  dependencies = {  -- optional packages
    'ray-x/guihua.lua',
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
    'theHamsta/nvim-dap-virtual-text',
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
  },
  config = function()
    require('go').setup({
      goimport = 'gopls', -- if set to 'gopls' will use golsp format
      gofmt = 'gopls', -- if set to gopls will use golsp format
      tag_transform = false,
      test_dir = '',
      -- lsp_cfg = true, -- false: use your own lspconfig
      -- lsp_gofumpt = true, -- true: set default gofmt in gopls format to gofumpt
      -- lsp_on_attach = true, -- use on_attach from go.nvim
      -- dap_debug = true,
    })
  end,
  event = {'CmdlineEnter'},
  ft = {'go', 'gomod'},
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}

