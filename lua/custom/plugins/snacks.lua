vim.pack.add {
  'https://github.com/folke/snacks.nvim',
}

require('snacks').setup {
  terminal = { enabled = true },

}

-- keybinding
vim.keymap.set('n', '<C-/>', function() Snacks.terminal() end, {desc = 'Toggle Terminal'})
vim.keymap.set('t', '<C-/>', function() Snacks.terminal() end, {desc = 'Toggle Terminal'})
