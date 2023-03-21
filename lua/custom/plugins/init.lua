-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Catppuccin Mocha theme
  "catppuccin/nvim",
  name = "catppuccin",
  -- Typescript stuff
  'jose-elias-alvarez/typescript.nvim',
  'windwp/nvim-ts-autotag',
  config = true,
  require 'lspconfig'.eslint.setup({
    settings = {
      packageManager = 'yarn'
    },
    on_attach = function(client, bufnr)
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        command = "EslintFixAll",
      })
    end,
  }),
}
