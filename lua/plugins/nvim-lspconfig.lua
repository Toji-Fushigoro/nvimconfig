return{
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require('lspconfig')
    require('cmp_nvim_lsp').default_capabilities
    lspconfig.pyright.setup({
      capabilities = capabilities
    }),
    lspconfig.lua_ls.setup({
      capabilities = capabilities
    })
  end
}
