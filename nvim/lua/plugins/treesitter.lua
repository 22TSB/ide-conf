return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            "JoosepAlviste/nvim-ts-context-commentstring",
            "windwp/nvim-ts-autotag", -- autotag plugin
        },
        config = function()
            vim.g.skip_ts_context_commentstring_module = true
            require("ts_context_commentstring").setup({})

            local configs = require("nvim-treesitter.configs")
            configs.setup({
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
                highlight = { enable = true },
                indent = { enable = true },
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
                auto_install = false,
            })

            -- NEW: setup autotag separately (prevents deprecation warning)
            require("nvim-ts-autotag").setup()
        end,
    },
}
