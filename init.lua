local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require("ds.options")
require("ds.keymaps")
require("ds.reload")
require("ds.neovide")

require("lazy").setup({
  require("plugins.neotree"),
  require("plugins.colortheme"),
  require("plugins.lualine"),
  require("plugins.treesitter"),
  require("plugins.telescope"),
  require("plugins.whichkey"),
  require("plugins.nvim-cmp"),
  require("plugins.lsp-tj"),
  require("plugins.autoformat"),
  require("plugins.todo-comments"),
  require("plugins.autopairs"),
  require("plugins.markdown"),
  require("plugins.toggleterm"),
  require("plugins.org-mode"),
  -- require("plugins.indent_line"), require("plugins.noice"),
})
