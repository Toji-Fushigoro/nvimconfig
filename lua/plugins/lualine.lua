return{
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("lualine").setup({
      options = {
       -- "dracula",
        --"one dark",
        --"material",
        "horizon"
      }
    })
  end
}
