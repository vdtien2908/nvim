return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
             '.git',
            -- '.DS_Store',
            -- 'thumbs.db',
          },
          never_show = {},
        },
      },
    })

    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", opts)
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", opts)
    vim.keymap.set("n", "<F5>", ":Neotree toggle filesystem<CR>", opts)
  end,
}
