return {
  'obsidian-nvim/obsidian.nvim',
  config = function()
    local config = {
      ui = { enable = false },
      completion = { blink = true, nvim_cmp = false },
      picker = { name = 'snacks.pick' },
      legacy_commands = false,
    }

    local workspace_config = {}
    local work_path = vim.fn.expand '~/OneDrive - USS/USS/vault'
    local has_work_vault = vim.fn.isdirectory(work_path)

    if has_work_vault == 1 then
      workspace_config = {
        workspaces = { { name = 'ussim', path = '~/OneDrive - USS/USS/vault' } },
      }
    else
      workspace_config = {
        workspaces = { { name = 'personal', path = '~/vaults/personal' } },
      }
    end

    require('obsidian').setup(vim.tbl_extend('force', config, workspace_config))
  end,
}
