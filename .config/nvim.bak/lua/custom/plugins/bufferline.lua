return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function ()
    local bufferline = require('bufferline')

    bufferline.setup({
      -- custom config goes here
      options = {
        sort_by = 'insert_at_end',
        separator_style = {'', ''},
        show_buffer_icons = true,
        numbers = function(opts)
          return string.format('%s', opts.ordinal)
        end,
        buffer_close_icon = '×',
        modified_icon = '•',
        style_preset = {
          bufferline.style_preset.no_italic,
          bufferline.style_preset.no_bold
        },
        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = true,
        diagnostics_indicator = function(_, _, diagnostics_dict, _)
          local s = ''
          for e, n in pairs(diagnostics_dict) do
            local sym = e == 'error' and '  '
                or (e == 'warning' and '  ')
                or (e == 'hint' and ' 󰌶 ' or '  ')
            s = s .. sym .. n
          end
          return s
        end
      },
    })

    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map('n', '<A-,>', '<Cmd>BufferLineCyclePrev<CR>', opts)
    map('n', '<A-.>', '<Cmd>BufferLineCycleNext<CR>', opts)
    -- Re-order to previous/next
    map('n', '<A-<>', '<Cmd>BufferLineMovePrev<CR>', opts)
    map('n', '<A->>', '<Cmd>BufferLineMoveNext<CR>', opts)
    -- Goto buffer in position...
    map('n', '<A-1>', '<Cmd>BufferLineGoToBuffer  1<CR>', opts)
    map('n', '<A-2>', '<Cmd>BufferLineGoToBuffer  2<CR>', opts)
    map('n', '<A-3>', '<Cmd>BufferLineGoToBuffer  3<CR>', opts)
    map('n', '<A-4>', '<Cmd>BufferLineGoToBuffer  4<CR>', opts)
    map('n', '<A-5>', '<Cmd>BufferLineGoToBuffer  5<CR>', opts)
    map('n', '<A-6>', '<Cmd>BufferLineGoToBuffer  6<CR>', opts)
    map('n', '<A-7>', '<Cmd>BufferLineGoToBuffer  7<CR>', opts)
    map('n', '<A-8>', '<Cmd>BufferLineGoToBuffer  8<CR>', opts)
    map('n', '<A-9>', '<Cmd>BufferLineGoToBuffer  9<CR>', opts)
    map('n', '<A-0>', '<Cmd>BufferLineGoToBuffer -1<CR>', opts)
    -- Close buffer pick
    map('n', '<A-c>', '<Cmd>BufferLinePickClose<CR>', opts)
  end
}

