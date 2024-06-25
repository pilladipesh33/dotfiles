return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "roseprime",
    },
  },
  -- Lua
  -- {
  --   "olivercederborg/poimandres.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("poimandres").setup {
  --       require("poimandres").setup {
  --         bold_vert_split = false, -- use bold vertical separators
  --         dim_nc_background = true, -- dim 'non-current' window backgrounds
  --         disable_background = true, -- disable background
  --         disable_float_background = false, -- disable background for floats
  --         disable_italics = false, -- disable italics
  --       },
  --     }
  --   end,
  --
  --   -- optionally set the colorscheme within lazy config
  --   -- init = function() vim.cmd "colorscheme poimandres" end,
  -- },
  {
  "cdmill/neomodern.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("neomodern").setup({
      -- optional configuration here
        style = "roseprime",
        transparent = true,
        term_colors = true,

        -- Formatting
        code_style = {
          comments = "italic",
          headings = "bold",
        },

        -- UI options --
  ui = {
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
    colored_docstrings = true, -- if true, docstrings will be highlighted like strings, otherwise they will be highlighted like comments
    plain = false, -- don't set background for search
    show_eob = true, -- show the end-of-buffer tildes

    -- Plugins Related --
    lualine = {
      bold = true,
      plain = false, -- use a less distracting lualine. note: works best when no lualine separators are used
    },
    telescope = "borderless", -- choose between 'borderless' or 'bordered'
    diagnostics = {
      darker = true, -- darker colors for diagnostic
      undercurl = true, -- use undercurl for diagnostics
      background = true, -- use background color for virtual text
    },
  },
      })
    require("neomodern").load()
  end,
},
}
