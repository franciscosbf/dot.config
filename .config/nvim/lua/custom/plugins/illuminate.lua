return {
  'RRethy/vim-illuminate',
  config = function ()
    require('illuminate').configure({
      -- config goes here
      under_cursor = false,
    })
  end
}
