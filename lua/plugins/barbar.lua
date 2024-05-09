return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "lewis6991/gitsigns.nvim",
  },
  init = function()
    vim.g.barbar_auto_setup = false
    vim.keymap.set("n", "<leader>tn", "<Cmd>BufferNext<CR>", {})
    vim.keymap.set("n", "<leader>tp", "<Cmd>BufferPrevious<CR>", {})
    vim.keymap.set("n", "<leader>tc", "<Cmd>BufferClose<CR>", {})
  end,
  opts = {
    animation = true,
    insert_at_start = true,
  },
}
