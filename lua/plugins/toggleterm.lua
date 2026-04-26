return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-\>]],
      insert_mappings = true,
      shell = "pwsh.exe",
      shade_terminals = false,
      -- direction = "vertical",
      direction = "float",
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return 116
        end
      end,
    })
  end,
}
