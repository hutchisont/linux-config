function do_setup_trim_whitespace_on_save()
  vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*.cpp", "*.c", "*.hpp", "*.h", "*.py", "*.go", "*.xml",
      "*.fish", "*.sh", "*.odin", "*.conf", "*.lua"
    },
    callback = function()
      local save_cursor = vim.fn.getpos(".")
      pcall(function() vim.cmd [[%s/\s\+$//e]] end)
      vim.fn.setpos(".", save_cursor)
    end,
  })
end

function do_setup_highlight()
  -- [[ Highlight on yank ]]
  -- See `:help vim.highlight.on_yank()`
  local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
  vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
      vim.hl.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
  })
end

do_setup_trim_whitespace_on_save()
do_setup_highlight()
