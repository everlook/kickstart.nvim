-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.opt.tabstop = 4

return {
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup {}

      vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })
    end,
  },
  {
    'dzfrias/arena.nvim',
    event = 'BufWinEnter',
    config = function()
      require('arena').setup {}

      vim.keymap.set('n', '<C-b>', '<cmd>ArenaToggle<CR>', { desc = 'Toggle Arena' })
    end,
  },
  {
    'shellRaining/hlchunk.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('hlchunk').setup {
        chunk = {
          enable = true,
        },
        line_num = {
          enable = true,
        },
      }
    end,
  },
}
