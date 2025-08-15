return {
  'obsidian-nvim/obsidian.nvim',
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    ui = { enable = false },
    workspaces = { { name = 'personal', path = '~/OneDrive - USS/USS/vault' } },
    completion = { blink = true, nvim_cmp = false },
    picker = { name = 'snacks.pick' },
    legacy_commands = false,
  },
}
