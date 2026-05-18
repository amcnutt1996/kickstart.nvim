local themes_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', 'plugins', 'themes')
for file_name, file_type in vim.fs.dir(themes_dir) do
  if file_type == 'file' and file_name:match '%.lua$' and file_name ~= 'init.lua' then
    local module = file_name:gsub('%.lua$', '')
    require('plugins.themes.' .. module)
  end
end

-- set colorscheme for nvim here once
vim.cmd.colorscheme 'ayu'
