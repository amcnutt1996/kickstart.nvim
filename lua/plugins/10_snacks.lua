vim.pack.add {
  'https://github.com/folke/snacks.nvim',
}

require('snacks').setup ({
  terminal = { enabled = true },
  image = { enabled = true },
  notifier = {enabled = true},
})
