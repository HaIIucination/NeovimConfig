-- line numbers
vim.cmd("set number")
vim.cmd("set relativenumber")

-- tabs & indentation
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")


vim.opt.wrap = false -- line wrap

-- Universal clipboard*
vim.opt.clipboard:append("unnamed")

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true


-- spliting windows
vim.opt.splitright = true
vim.opt.splitbelow = true



vim.opt.breakindent = true
vim.opt.signcolumn = 'yes'

vim.opt.inccommand = 'split'

vim.opt.scrolloff = 10

vim.opt.undofile = true



vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })








-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})




vim.window_padding = {

  left = '5',
  right = '5',
  top = '5',
  bottom = '5',

}



