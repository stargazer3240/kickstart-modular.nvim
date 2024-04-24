return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "html",
        "css",
        "lua",
        "markdown",
        "vim",
        "vimdoc",
        "yaml",
        "toml",
        "json",
        "rust",
        "python",
        "cpp",
        "cmake",
        "java",
        "luadoc",
        "just",
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "ruby" },
      },
      indent = { enable = true, disable = { "ruby" } },
    },
    config = function(_, opts)
      -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
