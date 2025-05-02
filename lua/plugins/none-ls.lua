return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        require("none-ls.diagnostics.eslint_d"),
        null_ls.builtins.formatting.prettier
      }
    })

    vim.keymap.set("n", "<leader>gf", function() vim.lsp.buf.format({ timeout_ms = 5000 }) end, {})
  end
}
