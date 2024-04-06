return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local actions = require("telescope.actions")
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      telescope.setup({
        path_display = { "smart" },
        mappings = {
          i = {
            ["<c-n>"] = actions.cycle_history_next,
            ["<C-p>"] = actions.cycle_history_prev,

            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,

            ["<C-c>"] = actions.close,
          },
        },
      })
    end,
  },
 -- {
 --   "nvim-telescope/telescope-ui-select.nvim",
  --  config = function()
   --   require("telescope").setup({
    --    extensions = {
     --     ["ui-select"] = {
      --      require("telescope.themes").get_dropdown({}),
       --   },
       -- },
     -- })
     -- require("telescope").load_extension("ui-select")
   -- end,
  --},
}
