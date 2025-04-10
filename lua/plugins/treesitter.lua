return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "dart", "lua", "vim", "javascript", "html", "awk", "bash", "css", "csv", "json", "sql", "toml", "xml", "yaml" },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },  

            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<Enter>", -- set to `false` to disable one of the mappings
                    node_incremental = "<Enter>",
                    scope_incremental = false,
                    node_decremental = "<Backspace>",
                },
            },
            indent = {
                enable = true
            }
        })
    end
}
