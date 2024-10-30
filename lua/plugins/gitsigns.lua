return {
  'lewis6991/gitsigns.nvim',
  config = function()
    local gitsigns = require('gitsigns')
    require('gitsigns').setup()
    vim.keymap.set("n", "<leader>p", gitsigns.preview_hunk)
  end
}
