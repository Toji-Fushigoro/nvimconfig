return{
  { -- This plugin
    "Zeioth/compiler.nvim",
    cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
    dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
    opts = {},
  },
  { -- The task runner we use
    "stevearc/overseer.nvim",
    commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1
      },
    },
  },
  vim.api.nvim_set_keymap('n', '<Leader>co', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true }),
  
  vim.api.nvim_set_keymap('n', '<Leader>cr',
    "<cmd>CompilerStop<cr>"
    .. "<cmd>CompilerRedo<cr>",
    { noremap = true, silent = true }),

  vim.api.nvim_set_keymap('n', '<Leader>cf', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true }),
}
