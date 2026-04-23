local highlight = {
  "CursorColumn",
  "whitespace",
}

return { -- Add indentation guides even on blank lines
  { -- See `:help ibl`
    "lukas-reineke/indent-blankline.nvim",
    enabled = true,
    main = "ibl",
    opts = {},

    config = function()
      require("ibl").setup({
        -- indent = { highlight = highlight, char = "" },
        indent = { char = "│", tab_char = "│", smart_indent_cap = true }, --│
        -- │
        -- whitespace = {
        --   highlight = highlight,
        --   remove_blankline_trail = false,
        -- },
        -- indent = { char = "▏" },
        -- indent = { char = '#' },
        scope = {
          enabled = false,
          show_start = false,
        },
      })
    end,
  },
}
