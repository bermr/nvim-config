return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      rainbow = {
        enable = true,
        query = 'rainbow-parens',
        max_file_lines = 3000
      }
    })
  end
}
