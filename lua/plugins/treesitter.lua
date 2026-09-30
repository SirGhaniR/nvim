return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  dependencies = {
    { "windwp/nvim-ts-autotag" },
  },
  config = function()
    require("nvim-treesitter").setup({
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "lua",
        "php",
        "html",
        "javascript",
        "json",
        "css",
        "latex",
        "markdown",
        "markdown_inline",
      },
      sync_install = true,
      auto_install = true,
    })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "blade",
      callback = function()
        vim.treesitter.start()
      end,
    })

    require("nvim-ts-autotag").setup()
  end
}
