-- keymaps.lua
-- AstroNvim-inspired keymaps for use with kickstart/vanilla Neovim
-- Plugins required are noted above each section
-- Leader key is Space (set in init.lua with vim.g.mapleader = ' ')

local map = vim.keymap.set

-- ============================================================
-- GENERAL
-- ============================================================

map('n', '<leader>n', '<cmd>enew<cr>', { desc = 'New file' })
map('n', '<leader>R', '<cmd>lua vim.lsp.buf.rename()<cr>', { desc = 'Rename current file' }) -- requires LSP
map('n', '<leader>c', '<cmd>bdelete<cr>', { desc = 'Close buffer' })
map('n', '<leader>/', 'gcc', { desc = 'Toggle comment', remap = true })
map('v', '<leader>/', 'gc', { desc = 'Toggle comment', remap = true })

-- ============================================================
-- WINDOW NAVIGATION (no plugins required)
-- ============================================================

map('n', '<C-h>', '<C-w>h', { desc = 'Left window' })
map('n', '<C-j>', '<C-w>j', { desc = 'Down window' })
map('n', '<C-k>', '<C-w>k', { desc = 'Up window' })
map('n', '<C-l>', '<C-w>l', { desc = 'Right window' })

-- Window resize
map('n', '<C-Up>', '<cmd>resize +2<cr>', { desc = 'Resize up' })
map('n', '<C-Down>', '<cmd>resize -2<cr>', { desc = 'Resize down' })
map('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Resize left' })
map('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Resize right' })

-- Splits
map('n', '\\', '<cmd>split<cr>', { desc = 'Horizontal split' })
map('n', '|', '<cmd>vsplit<cr>', { desc = 'Vertical split' })

-- Save / Quit
map('n', '<C-s>', '<cmd>w<cr>', { desc = 'Force write' })
map('n', '<C-q>', '<cmd>q<cr>', { desc = 'Force quit' })

-- ============================================================
-- BUFFERS (no plugins required)
-- ============================================================

map('n', ']b', '<cmd>bnext<cr>', { desc = 'Next buffer' })
map('n', '[b', '<cmd>bprevious<cr>', { desc = 'Previous buffer' })
map('n', '>b', '<cmd>BufferLineMoveNext<cr>', { desc = 'Move buffer right' }) -- requires bufferline.nvim
map('n', '<b', '<cmd>BufferLineMovePrev<cr>', { desc = 'Move buffer left' }) -- requires bufferline.nvim
map('n', '<leader>bp', '<cmd>bprevious<cr>', { desc = 'Go to previous buffer' })
map('n', '<leader>bc', '<cmd>%bd|e#|bd#<cr>', { desc = 'Close all buffers except current' })
map('n', '<leader>bC', '<cmd>%bd<cr>', { desc = 'Close all buffers' })
map('n', '<leader>bl', '<cmd>BufferLineCloseLeft<cr>', { desc = 'Close buffers to the left' }) -- requires bufferline.nvim
map('n', '<leader>br', '<cmd>BufferLineCloseRight<cr>', { desc = 'Close buffers to the right' }) -- requires bufferline.nvim
map('n', '<leader>bse', '<cmd>BufferLineSortByExtension<cr>', { desc = 'Sort buffers by extension' }) -- requires bufferline.nvim
map('n', '<leader>bsi', '<cmd>BufferLineSortByTabs<cr>', { desc = 'Sort buffers by number' }) -- requires bufferline.nvim
map('n', '<leader>bsm', '<cmd>BufferLineSortByRelativeDirectory<cr>', { desc = 'Sort buffers by modification' }) -- requires bufferline.nvim
map('n', '<leader>bsp', '<cmd>BufferLineSortByDirectory<cr>', { desc = 'Sort buffers by full path' }) -- requires bufferline.nvim
map('n', '<leader>bb', '<cmd>BufferLinePick<cr>', { desc = 'Pick buffer' }) -- requires bufferline.nvim
map('n', '<leader>bd', '<cmd>BufferLinePickClose<cr>', { desc = 'Delete buffer (picker)' }) -- requires bufferline.nvim
map('n', '<leader>b\\', '<cmd>split | BufferLinePick<cr>', { desc = 'Open buffer in horizontal split' })
map('n', '<leader>b|', '<cmd>vsplit | BufferLinePick<cr>', { desc = 'Open buffer in vertical split' })

-- ============================================================
-- TABS (no plugins required)
-- ============================================================

map('n', ']t', '<cmd>tabnext<cr>', { desc = 'Next tab' })
map('n', '[t', '<cmd>tabprevious<cr>', { desc = 'Previous tab' })

-- ============================================================
-- LIST MANAGEMENT (no plugins required)
-- ============================================================

map('n', '<leader>xq', '<cmd>copen<cr>', { desc = 'Open quickfix list' })
map('n', '<leader>xl', '<cmd>lopen<cr>', { desc = 'Open local list' })
map('n', ']q', '<cmd>cnext<cr>', { desc = 'Next quickfix entry' })
map('n', '[q', '<cmd>cprev<cr>', { desc = 'Previous quickfix entry' })
map('n', ']Q', '<cmd>clast<cr>', { desc = 'Last quickfix entry' })
map('n', '[Q', '<cmd>cfirst<cr>', { desc = 'First quickfix entry' })
map('n', ']l', '<cmd>lnext<cr>', { desc = 'Next local list entry' })
map('n', '[l', '<cmd>lprev<cr>', { desc = 'Previous local list entry' })
map('n', ']L', '<cmd>llast<cr>', { desc = 'Last local list entry' })
map('n', '[L', '<cmd>lfirst<cr>', { desc = 'First local list entry' })

-- ============================================================
-- BETTER ESCAPE (no plugins required)
-- ============================================================

map('i', 'jj', '<Esc>', { desc = 'Escape insert mode' })
map('i', 'jk', '<Esc>', { desc = 'Escape insert mode' })

-- ============================================================
-- NEO-TREE  (requires neo-tree.nvim)
-- ============================================================

map('n', '<leader>e', '<cmd>Neotree toggle<cr>', { desc = 'Toggle neo-tree' })
map('n', '<leader>o', '<cmd>Neotree focus<cr>', { desc = 'Focus neo-tree' })

-- ============================================================
-- DASHBOARD  (requires snacks.nvim or alpha.nvim)
-- ============================================================

map('n', '<leader>h', '<cmd>lua Snacks.dashboard()<cr>', { desc = 'Home dashboard' }) -- snacks.nvim
-- map('n', '<leader>h', '<cmd>Alpha<cr>', { desc = 'Home dashboard' })               -- alpha.nvim alternative

-- ============================================================
-- FINDER / PICKER  (requires telescope.nvim or snacks.nvim picker)
-- ============================================================

-- Using Telescope (comment out if using snacks picker)
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
map('n', '<leader>fF', '<cmd>Telescope find_files hidden=true<cr>', { desc = 'Find files (hidden)' })
map('n', '<leader>fw', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })
map('n', '<leader>fW', '<cmd>Telescope live_grep hidden=true<cr>', { desc = 'Live grep (hidden)' })
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Buffers' })
map('n', '<leader>fc', '<cmd>Telescope grep_string<cr>', { desc = 'Word at cursor' })
map('n', '<leader>fC', '<cmd>Telescope commands<cr>', { desc = 'Commands' })
map('n', '<leader>fg', '<cmd>Telescope git_files<cr>', { desc = 'Git tracked files' })
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help tags' })
map('n', '<leader>fk', '<cmd>Telescope keymaps<cr>', { desc = 'Keymaps' })
map('n', '<leader>fl', '<cmd>Telescope current_buffer_fuzzy_find<cr>', { desc = 'Lines' })
map('n', '<leader>fm', '<cmd>Telescope man_pages<cr>', { desc = 'Man pages' })
map('n', '<leader>fo', '<cmd>Telescope oldfiles<cr>', { desc = 'Old files' })
map('n', '<leader>fO', '<cmd>Telescope oldfiles cwd_only=true<cr>', { desc = 'Old files (cwd)' })
map('n', '<leader>fr', '<cmd>Telescope registers<cr>', { desc = 'Registers' })
map('n', '<leader>ft', '<cmd>Telescope colorscheme<cr>', { desc = 'Colorschemes' })
map('n', "<leader>f'", '<cmd>Telescope marks<cr>', { desc = 'Marks' })
map('n', '<leader>fn', '<cmd>Telescope notify<cr>', { desc = 'Notifications' }) -- requires telescope-notify
map('n', '<leader>fu', '<cmd>Telescope undo<cr>', { desc = 'Undo history' }) -- requires telescope-undo

-- ============================================================
-- GIT  (requires telescope.nvim + gitsigns.nvim)
-- ============================================================

map('n', '<leader>gb', '<cmd>Telescope git_branches<cr>', { desc = 'Git branches' })
map('n', '<leader>gc', '<cmd>Telescope git_commits<cr>', { desc = 'Git commits (repo)' })
map('n', '<leader>gC', '<cmd>Telescope git_bcommits<cr>', { desc = 'Git commits (file)' })
map('n', '<leader>gt', '<cmd>Telescope git_status<cr>', { desc = 'Git status' })
map('n', '<leader>gT', '<cmd>Telescope git_stash<cr>', { desc = 'Git stash' })
map('n', '<leader>go', '<cmd>lua vim.fn.jobstart({"open", vim.fn.expand("<cfile>")})<cr>', { desc = 'Git browse (open)' })

-- ============================================================
-- LSP  (requires nvim-lspconfig — most are built-in on attach)
-- ============================================================

map('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<cr>', { desc = 'Code actions' })
map('n', '<leader>ld', '<cmd>lua vim.diagnostic.open_float()<cr>', { desc = 'Line diagnostics' })
map('n', '<leader>lD', '<cmd>lua vim.diagnostic.setqflist()<cr>', { desc = 'All diagnostics' })
map('n', '<leader>lf', '<cmd>lua vim.lsp.buf.format({ async = true })<cr>', { desc = 'Format document' })
map('n', '<leader>lh', '<cmd>lua vim.lsp.buf.signature_help()<cr>', { desc = 'Signature help' })
map('n', '<leader>li', '<cmd>LspInfo<cr>', { desc = 'LSP info' })
map('n', '<leader>lr', '<cmd>lua vim.lsp.buf.rename()<cr>', { desc = 'Rename' })
map('n', '<leader>lR', '<cmd>Telescope lsp_references<cr>', { desc = 'References' })
map('n', '<leader>ls', '<cmd>Telescope lsp_document_symbols<cr>', { desc = 'Document symbols' })
map('n', '<leader>lG', '<cmd>Telescope lsp_workspace_symbols<cr>', { desc = 'Workspace symbols' })
map('n', '<leader>lS', '<cmd>SymbolsOutline<cr>', { desc = 'Symbols outline' }) -- requires symbols-outline.nvim

-- LSP diagnostics navigation
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', { desc = 'Next diagnostic' })
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', { desc = 'Previous diagnostic' })
map('n', ']e', '<cmd>lua vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })<cr>', { desc = 'Next error' })
map('n', '[e', '<cmd>lua vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })<cr>', { desc = 'Previous error' })
map('n', ']w', '<cmd>lua vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })<cr>', { desc = 'Next warning' })
map('n', '[w', '<cmd>lua vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })<cr>', { desc = 'Previous warning' })

-- ============================================================
-- DEBUGGER  (requires nvim-dap + nvim-dap-ui)
-- ============================================================

map('n', '<leader>dc', '<cmd>lua require("dap").continue()<cr>', { desc = 'Start/continue debugger' })
map('n', '<leader>dp', '<cmd>lua require("dap").pause()<cr>', { desc = 'Pause debugger' })
map('n', '<leader>dr', '<cmd>lua require("dap").restart()<cr>', { desc = 'Restart debugger' })
map('n', '<leader>ds', '<cmd>lua require("dap").run_to_cursor()<cr>', { desc = 'Run to cursor' })
map('n', '<leader>dq', '<cmd>lua require("dap").close()<cr>', { desc = 'Close debugger session' })
map('n', '<leader>dQ', '<cmd>lua require("dap").terminate()<cr>', { desc = 'Terminate debugger' })
map('n', '<leader>db', '<cmd>lua require("dap").toggle_breakpoint()<cr>', { desc = 'Toggle breakpoint' })
map('n', '<leader>dC', '<cmd>lua require("dap").set_breakpoint(vim.fn.input("Condition: "))<cr>', { desc = 'Conditional breakpoint' })
map('n', '<leader>dB', '<cmd>lua require("dap").clear_breakpoints()<cr>', { desc = 'Clear breakpoints' })
map('n', '<leader>do', '<cmd>lua require("dap").step_over()<cr>', { desc = 'Step over' })
map('n', '<leader>di', '<cmd>lua require("dap").step_into()<cr>', { desc = 'Step into' })
map('n', '<leader>dO', '<cmd>lua require("dap").step_out()<cr>', { desc = 'Step out' })
map('n', '<leader>dE', '<cmd>lua require("dapui").eval(vim.fn.input("Expression: "))<cr>', { desc = 'Evaluate expression' })
map('n', '<leader>dR', '<cmd>lua require("dap").repl.toggle()<cr>', { desc = 'Toggle REPL' })
map('n', '<leader>du', '<cmd>lua require("dapui").toggle()<cr>', { desc = 'Toggle debugger UI' })
map('n', '<leader>dh', '<cmd>lua require("dap.ui.widgets").hover()<cr>', { desc = 'Debugger hover' })
map('n', '<F5>', '<cmd>lua require("dap").continue()<cr>', { desc = 'Start/continue debugger' })
map('n', '<F6>', '<cmd>lua require("dap").pause()<cr>', { desc = 'Pause debugger' })
map('n', '<F9>', '<cmd>lua require("dap").toggle_breakpoint()<cr>', { desc = 'Toggle breakpoint' })
map('n', '<F10>', '<cmd>lua require("dap").step_over()<cr>', { desc = 'Step over' })
map('n', '<F11>', '<cmd>lua require("dap").step_into()<cr>', { desc = 'Step into' })

-- ============================================================
-- TERMINAL  (requires snacks.nvim or toggleterm.nvim)
-- ============================================================

-- snacks.nvim terminal
map('n', '<leader>tf', '<cmd>lua Snacks.terminal()<cr>', { desc = 'Floating terminal' })
map('t', '<leader>tf', '<cmd>lua Snacks.terminal()<cr>', { desc = 'Floating terminal' })
map('n', '<C-/>', '<cmd>lua Snacks.terminal()<cr>', { desc = 'Toggle terminal' })
map('t', '<C-/>', '<cmd>lua Snacks.terminal()<cr>', { desc = 'Toggle terminal' })

-- Lazygit (requires lazygit installed + snacks.nvim)
map('n', '<leader>tl', '<cmd>lua Snacks.lazygit()<cr>', { desc = 'Toggle lazygit' })

-- ============================================================
-- SESSIONS  (requires persistence.nvim or resession.nvim)
-- ============================================================

-- persistence.nvim
map('n', '<leader>Ss', '<cmd>lua require("persistence").save()<cr>', { desc = 'Save session' })
map('n', '<leader>Sl', '<cmd>lua require("persistence").load({ last = true })<cr>', { desc = 'Last session' })
map('n', '<leader>S.', '<cmd>lua require("persistence").load()<cr>', { desc = 'Load current dir session' })

-- ============================================================
-- PACKAGE MANAGEMENT  (requires lazy.nvim — skip if using vim.pack)
-- ============================================================

-- map('n', '<leader>pi', '<cmd>Lazy install<cr>',   { desc = 'Plugins install' })
-- map('n', '<leader>ps', '<cmd>Lazy<cr>',           { desc = 'Plugins status' })
-- map('n', '<leader>pS', '<cmd>Lazy sync<cr>',      { desc = 'Plugins sync' })
-- map('n', '<leader>pu', '<cmd>Lazy check<cr>',     { desc = 'Check for updates' })
-- map('n', '<leader>pU', '<cmd>Lazy update<cr>',    { desc = 'Update plugins' })
-- map('n', '<leader>pm', '<cmd>Mason<cr>',          { desc = 'Mason installer' })
-- map('n', '<leader>pM', '<cmd>MasonUpdate<cr>',    { desc = 'Mason updater' })

-- vim.pack alternative
map('n', '<leader>pU', '<cmd>lua vim.pack.update()<cr>', { desc = 'Update plugins (vim.pack)' })
map('n', '<leader>pm', '<cmd>Mason<cr>', { desc = 'Mason installer' })
map('n', '<leader>pM', '<cmd>MasonUpdate<cr>', { desc = 'Mason updater' })

-- ============================================================
-- UI TOGGLES  (mix of built-in and plugin-dependent)
-- ============================================================

map('n', '<leader>un', '<cmd>set number!<cr>', { desc = 'Toggle line numbers' })
map('n', '<leader>ur', '<cmd>set relativenumber!<cr>', { desc = 'Toggle relative numbers' })
map('n', '<leader>uw', '<cmd>set wrap!<cr>', { desc = 'Toggle word wrap' })
map('n', '<leader>us', '<cmd>set spell!<cr>', { desc = 'Toggle spellcheck' })
map('n', '<leader>uh', '<cmd>set hlsearch!<cr>', { desc = 'Toggle search highlight' })
