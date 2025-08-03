local uv_run_file = function()
  local path = vim.api.nvim_buf_get_name(0)
  local cmd = "uv run " .. path
  local opts = { win = { style = { border = "rounded" } }, auto_close = false }
  require("snacks").terminal.open(cmd, opts)
end

local textual_colors = function()
  local cmd = "uv run textual colors"
  local opts = { win = { style = { border = "rounded" } }, auto_close = false }
  require("snacks").terminal.open(cmd, opts)
end

local textual_run = function()
  local path = vim.api.nvim_buf_get_name(0)
  local cmd = "uv run textual --dev " .. path
  local opts = { win = { style = { border = "rounded" } }, auto_close = false }
  require("snacks").terminal.open(cmd, opts)
end

vim.api.nvim_create_user_command("UVRunFile", uv_run_file, {})
vim.api.nvim_create_user_command("TextualColors", textual_colors, {})
vim.keymap.set("n", "<leader>fe", "<cmd>UVRunFile<CR>", { desc = "Execute in terminal" })
vim.keymap.set("n", "<leader>tr", "<cmd>UVRunFile<CR>", { desc = "Textual run (dev)" })
