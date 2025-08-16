return {
  'obsidian-nvim/obsidian.nvim',
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    workspaces = {
      { name = 'personal', path = os.getenv 'VAULT' or vim.fn.expand '~/vault' },
    },
    ui = { enable = false },
    completion = { blink = true, nvim_cmp = false },
    picker = { name = 'snacks.pick' },
    legacy_commands = false,
  },
}
