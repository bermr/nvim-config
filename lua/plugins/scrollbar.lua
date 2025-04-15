return {
  "petertriho/nvim-scrollbar",
  config = function()
    require("scrollbar").setup()
    -- Opcional: Integrar com diagnostics e search
    require("scrollbar.handlers.search").setup()
  end,
}
