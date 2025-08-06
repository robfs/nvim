-- vim.opt.shiftwidth = 4
vim.opt.clipboard = 'unnamedplus'
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.scrolloff = 10

vim.g.python3_host_prog = '~/nvimvenv/.venv/bin/python'

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)
