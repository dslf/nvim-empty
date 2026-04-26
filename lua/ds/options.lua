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

-- vim.opt.shell = "pwsh.exe"

vim.o.cursorline = true
vim.opt.scrolloff = 10
vim.opt.wrap = false

vim.o.cmdheight = 0

require("kanagawa").setup({
  commentStyle = { italic = false },
  keywordStyle = { italic = false },
})

-- vim.cmd([[colorscheme retrobox]])
-- vim.cmd([[colorscheme nightfly]])
-- vim.cmd([[colorscheme kanagawa-wave]])
vim.cmd([[colorscheme lunaperche]])

vim.opt.termguicolors = true
vim.g.nightflyItalics = false

-- Меняю разделитель, надо менять после загрузки цветовой схемы, иначе схема всё перезаписывает
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#444444", bg = "none" })
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#444444", bg = "none" })

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
