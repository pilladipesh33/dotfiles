return {
  -- {
  --   "piersolenski/wtf.nvim",
  --   opts = {},
  --   keys = {
  --     {
  --       "gw",
  --       mode = { "n", "x" },
  --       function() require("wtf").ai() end,
  --       desc = "Debug diagnostic with AI",
  --     },
  --     {
  --       mode = { "n" },
  --       "gW",
  --       function() require("wtf").search() end,
  --       desc = "Search diagnostic with Google",
  --     },
  --   },
  -- },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
      -- highlight_whole_line = false,
      -- begin without it, use <Leader>d to turn it on.
      vim.diagnostic.config { virtual_text = true, virtual_lines = false }
      vim.keymap.set("", "<Leader>d", function()
        if vim.diagnostic.config().virtual_text then
          -- vim.diagnostic.config({ virtual_text = false, virtual_lines = { only_current_line = true } })
          vim.diagnostic.config { virtual_text = false, virtual_lines = true }
        else
          vim.diagnostic.config { virtual_text = true, virtual_lines = false }
        end
      end, { desc = "Toggle lsp_lines" })
    end,
  },
  {
    -- TS ERROR TRANSLATOR
    { "dmmulroy/ts-error-translator.nvim" },
  },
}
