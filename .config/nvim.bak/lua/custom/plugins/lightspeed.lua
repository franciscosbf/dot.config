return {
  "ggandor/lightspeed.nvim",
  dependencies = "tpope/vim-repeat",
  config = function ()
    require("lightspeed").setup({
      -- setup goes here
      ignore_case = false,
    })
  end
}

