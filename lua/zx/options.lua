vim.opt.relativenumber = true
vim.opt.number = true
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.undofile = true
vim.o.smartcase = true
vim.g.netw_banner = 0
vim.o.clipboard = "unnamedplus"
vim.o.tabstop = 4
vim.o.mouse = 'a'
vim.o.autoindent = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.cmd([[colorscheme retrobox]])

vim.opt.termguicolors = true
vim.g.nightflyItalics = false
-- vim.cmd [[colorscheme nightfly]]

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
