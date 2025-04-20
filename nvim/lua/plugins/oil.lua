return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      columns = {
        "icon",
        "permissions",
        "size",
        -- "mtime",
      },
      watch_for_changes = true,
      -- Window-local options to use for oil buffers
      win_options = {
        signcolumn = "yes",
      },
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
      },

    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  },
}
