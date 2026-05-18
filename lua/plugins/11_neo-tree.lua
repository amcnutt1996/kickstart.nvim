-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

local plugins = {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
}

-- if vim.g.have_nerd_font then
--   table.insert(plugins, 'https://github.com/nvim-tree/nvim-web-devicons') -- not strictly required, but recommended
-- end

vim.pack.add(plugins)

vim.keymap.set('n', '\\', '<Cmd>Neotree reveal<CR>', { desc = 'NeoTree reveal', silent = true })

require('neo-tree').setup {
  sources = {'filesystem', 'git_status', 'buffers'},
  source_selector = {
    winbar = true,
    sources = {
      {source = 'filesystem'},
      {source = 'git_status'},
      {source = 'buffers'},
    },
    statusline = false,
    truncation_character = '...',
    content_layout = 'center',
    tabs_layout = 'equal',
  },
  enable_git_status = true,
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_ignored = false,
      hide_hidden = false,
    },
    window = {
      mappings = {
        ['\\'] = 'close_window',
      },
    },
  },
  buffers = {},
}
