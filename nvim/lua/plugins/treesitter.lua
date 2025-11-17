return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            "JoosepAlviste/nvim-ts-context-commentstring",
        },
        config = function()
            -- NEW: disable deprecated ts module
            vim.g.skip_ts_context_commentstring_module = true

            -- NEW: load the plugin’s setup (required with new version)
            require("ts_context_commentstring").setup({})

            local configs = require("nvim-treesitter.configs")
            ---@diagnostic disable-next-line: missing-fields
            configs.setup({
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                        },
                    },
                },

                highlight = { enable = true },
                indent = { enable = true },
                autotag = { enable = true },

                -- REMOVE the deprecated context_commentstring block entirely
                -- context_commentstring = { ... }  <-- gone

                ensure_installed = {
                    "json",
                    "python",
                    "javascript",
                    "typescript",
                    "tsx",
                    "query",
                    "php",
                    "yaml",
                    "html",
                    "css",
                    "markdown",
                    "markdown_inline",
                    "bash",
                    "lua",
                    "vim",
                    "vimdoc",
                    "c",
                    "cpp",
                    "dockerfile",
                    "gitignore",
                    "astro",
                },

                auto_install = false,
            })
        end,
    },
}
