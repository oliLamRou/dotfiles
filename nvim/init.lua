vim.g.mapleader = " "

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true      -- case insensitive search
vim.opt.smartcase = true       -- unless you use capitals
vim.opt.scrolloff = 8          -- keep 8 lines above/below cursor
vim.opt.expandtab = true       -- spaces instead of tabs
vim.opt.shiftwidth = 2         -- indent size
vim.opt.tabstop = 2   
--Search
vim.opt.hlsearch = true         -- highlight all matches
vim.opt.incsearch = true        -- search as you type
vim.opt.shortmess:append("S")   -- shows [1/3] in command line
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlight' })

--Redo
vim.keymap.set('n', 'U', '<C-r>', { desc = 'Redo' })

-- Move lines with Alt+arrows (visual mode)
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv", { desc = 'Move line down' })
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv", { desc = 'Move line up' })

-- Move lines with Alt+arrows (normal mode)
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==', { desc = 'Move line up' })

-- Buffer navigation
vim.keymap.set('n', '<S-L>', ':bn<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-H>', ':bp<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>bd', ':bp | bd #<CR>', { desc = 'Delete buffer, keep window' })

-- Windows Navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

--Copy Paste
vim.opt.clipboard = "unnamedplus"
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank({higroup="IncSearch", timeout=500})
  end,
})

-- Mini Pick Search
require('mini.pick').setup()
vim.keymap.set('n', '<leader>ff', '<cmd>Pick files<cr>', { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', '<cmd>Pick grep_live<cr>', { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', '<cmd>Pick buffers<cr>', { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>fh', '<cmd>Pick help<cr>', { desc = 'Help tags' })

-- Theme
require("catppuccin").setup({
  flavour = "macchiato", -- latte, frappe, macchiato, mocha
  transparent_background = false,
})
vim.cmd.colorscheme("catppuccin")

-- Oil
require("oil").setup({
  view_options = {
    show_hidden = true,
  }
})
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Formatting
require("conform").setup({
  formatters_by_ft = {
    python = { "isort", "black" },
  },
})

-- -- Syntax Highlighting (Need C)
-- require('nvim-treesitter.configs').setup({
--   ensure_installed = { "python", "lua" },
--   highlight = { enable = true },
-- })
