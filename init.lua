vim.g.mapleader = 'space'
vim.g.maplocalleader = 'space'

require 'config.lazy'
require 'config.options'
require 'config.keymaps'

-- Sourcing keymap
vim.keymap.set('n', '<leader><leader>x', '<cmd>source %<CR>')
-- Highlight when yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text.',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
