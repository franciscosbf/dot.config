return {
  'folke/todo-comments.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- useful for for trouble
    'folke/trouble.nvim'
  },
  config = function ()
    require('todo-comments').setup({
      -- configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    })

    local map = vim.api.nvim_set_keymap

    map(
      'n', '<leader>tt', '<Cmd>TodoTrouble<CR>',
      { noremap = true, silent = true, desc = 'Todo Trouble' }
    )
  end
}

