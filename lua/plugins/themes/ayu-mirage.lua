vim.pack.add{'https://github.com/Shatur/neovim-ayu'}

require('ayu').setup({
  mirage=true,
  terminal=true,
})

require('lualine').setup({
  options = {
    theme='ayu',
  },
})
