return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
          ensure_installed = { "c", "cpp", "css", "csv", "dockerfile", "haskell", "lua", "vim", "vimdoc", "query", "elixir", "heex", "java", "json", "python", "javascript",  "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end,
}
