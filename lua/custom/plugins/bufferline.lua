vim.pack.add {
  'https://github.com/akinsho/bufferline.nvim',
}
vim.opt.termguicolors = true

vim.keymap.set('n', 'H', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Go to previous buffer' })
vim.keymap.set('n', 'L', '<cmd>BufferLineCycleNext<cr>', { desc = 'Go to next buffer' })

require('bufferline').setup {
  options = {
    mode = 'buffers',
    seperator_style = 'padded_slope', -- or 'thin', or 'slope', 'padded_slant'
    show_buffer_close_icons = true,
    show_close_icon = false,
    color_icons = true,
    diagnostics = 'nvim_lsp',
    offsets = {
      {
        filetype = 'neo-tree',
        text = 'File Explorer',
        highlight = 'Directory',
        seperator = true,
      },
    },
  },
}
