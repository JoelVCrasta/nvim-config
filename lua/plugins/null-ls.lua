return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    -- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
      },
    })

    --[[   vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = 0,
      callback = function()
        vim.lsp.buf.formatting(nil, 1000)
      end,
    }) ]]
    --
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
