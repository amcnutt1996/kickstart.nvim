-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Iterate over all Lua files in the plugins directory and load them
local plugins_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', 'plugins')
for file_name, file_type in vim.fs.dir(plugins_dir) do
  if file_type == 'file' and file_name:match '%.lua$' and file_name ~= 'init.lua' then
    local module = file_name:gsub('%.lua$', '')
    require('plugins.' .. module)
  end
end

--disable the J key so i stop accidentally hitting it :D
vim.keymap.set('n', 'J', '<nop>', { desc = 'Disabled' })

--change the tab stops and width of tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
