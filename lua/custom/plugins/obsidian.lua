return {
  'obsidian-nvim/obsidian.nvim',
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    event = {
      'BufReadPre $VAULT/*.md',
      'BufNewFile $VAULT/*.md',
    },
    workspaces = {
      { name = 'personal', path = os.getenv 'VAULT' or vim.fn.expand '~/vault' },
    },
    ui = { enable = false },
    completion = { blink = true, nvim_cmp = false },
    picker = { name = 'snacks.pick' },
    legacy_commands = false,
  },
}
