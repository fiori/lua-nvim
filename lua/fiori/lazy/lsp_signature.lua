return {
  "ray-x/lsp_signature.nvim",
  event = "InsertEnter",
  config = function()
    require('lsp_signature').setup({
      bind = true,
      handler_opts = {
        border = "single"
      },
      hint_enable = false, -- don't show inline hints
      floating_window = true, -- show as popup
      toggle_key = "<C-k>", -- optional built-in toggle
    })

    -- Optional: toggle manually with <C-k>
    vim.keymap.set('n', '<C-k>', function()
      require('lsp_signature').toggle_float_win()
    end, { silent = true, noremap = true, desc = 'Toggle signature popup' })
  end
}

