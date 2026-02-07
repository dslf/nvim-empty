vim.opt.relativenumber = true
vim.opt.number = true
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.undofile = true
vim.o.smartcase = true
vim.g.netw_banner = 0
vim.o.clipboard = "unnamedplus"
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.mouse = "a"
vim.o.autoindent = true
vim.o.ignorecase = true
vim.o.smartcase = true

require("kanagawa").setup({
  commentStyle = { italic = false },
  keywordStyle = { italic = false },
})

-- vim.cmd([[colorscheme retrobox]])
-- vim.cmd([[colorscheme nightfly]])
vim.cmd([[colorscheme kanagawa-wave]])

vim.opt.termguicolors = true
vim.g.nightflyItalics = false

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Source - https://stackoverflow.com/a/79435977
-- Posted by Carson
-- vim.o.updatetime = 250
-- vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
--   callback = function()
--     vim.diagnostic.open_float(nil, { focus = false })
--   end,
-- })

-- NOTE: Neovide stuff
-- vim.o.guifont = 'Comic mono:h14:#e-subpixelantialias:#h-full'
-- vim.o.guifont = 'Comic mono:h13:#e-subpixelantialias:#h-full'
-- vim.o.guifont = 'Fira Code Retina:h12:#e-subpixelantialias:#h-full'
-- vim.o.guifont = 'CodeNewRoman Nerd Font Mono:h14:#e-subpixelantialias:#h-full'
-- vim.o.guifont = 'ComicShannsMono Nerd Font:h13:#e-subpixelantialias:#h-full'
vim.o.guifont = "ComicCodeLigatures Nerd Font:h12:#e-subpixelantialias:#h-full"
