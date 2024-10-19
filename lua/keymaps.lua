-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Keymaps for Neogit
local neogit = require 'neogit'
vim.keymap.set('n', '<leader>gs', neogit.open, { desc = 'Open [G]it [S]tatus' })
vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>', { desc = '[G]it [C]ommit' })
vim.keymap.set('n', '<leader>gp', ':Neogit pull<CR>', { desc = '[G]it [p]ull' })
vim.keymap.set('n', '<leader>gP', ':Neogit push<CR>', { desc = '[G]it [P]ush' })
vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>', { desc = '[G]it [b]ranches' })
vim.keymap.set('n', '<leader>gB', neogit.open, { desc = '[G]it [B]lame' })

-- Keymaps for Spectre
vim.keymap.set('n', '<leader>tf', '<cmd>lua require("spectre").toggle()<CR>', {
  desc = 'Toggle Spectre ([F]ind)',
})
vim.keymap.set({ 'n', 'v' }, '<leader>fw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = '[F]ind current word',
})
vim.keymap.set('n', '<leader>fp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = '[F]ind in current file',
})

-- Keymaps for neoclip
vim.keymap.set({ 'n', 'v' }, '<C-v>', ':Telescope neogit<CR>')
-- vim: ts=2 sts=2 sw=2 et
