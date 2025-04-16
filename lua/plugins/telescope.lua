return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      local actions = require("telescope.actions")
      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<C-x>"] = actions.select_vertical,
              ["<C-d>"] = actions.select_horizontal,
            },
          },
        },
        pickers = {
          find_files = {
            mappings = {
            },
          },
        },
        extensions = {
          ["ui-select"] = { require("telescope.themes").get_dropdown {} }
        }
      })
      require("telescope").load_extension("ui-select")
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>b", builtin.buffers, {})
    end
  }
}
