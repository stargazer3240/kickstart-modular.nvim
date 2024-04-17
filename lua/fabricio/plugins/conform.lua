return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local disable_filetypes = { c = true }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
      formatters_by_ft = {
        cpp = { "clang_format" },
        cmake = { "gersemi" },
        lua = { "stylua" },
        markdown = { "markdownlint" },
        css = { "prettierd" },
        html = { "prettierd" },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
