return {
    {
        "williamboman/mason.nvim",
        event = { "BufReadPre", "VimEnter" },
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        event = "BufReadPre",
        config = function()
            require("mason-lspconfig").setup()
        end,
    },

    {
        "hrsh7th/nvim-cmp",
        event = "VimEnter",
        dependencies = {
            { "neovim/nvim-lspconfig" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-cmdline" },

            { "L3MON4D3/LuaSnip" },
            { "saadparwaiz1/cmp_luasnip" },
            
            {
                "onsails/lspkind-nvim",
                config = function()
                    require("lspkind").init({
                        -- DEPRECATED (use mode instead): enables text annotations
                        --
                        -- default: true
                        -- with_text = true,

                        -- defines how annotations are shown
                        -- default: symbol
                        -- options: "text", "text_symbol", "symbol_text", "symbol"
                        mode = "symbol_text",

                        -- default symbol map
                        -- can be either "default" (requires nerd-fonts font) or
                        -- "codicons" for codicon preset (requires vscode-codicons font)
                        --
                        -- default: "default"
                        preset = "codicons",

                        -- override preset symbols
                        --
                        -- default: {}
                        symbol_map = {
                            Text = "󰉿",
                            Method = "󰆧",
                            Function = "󰊕",
                            Constructor = "",
                            Field = "󰜢",
                            Variable = "󰀫",
                            Class = "󰠱",
                            Interface = "",
                            Module = "",
                            Property = "󰜢",
                            Unit = "󰑭",
                            Value = "󰎠",
                            Enum = "",
                            Keyword = "󰌋",
                            Snippet = "",
                            Color = "󰏘",
                            File = "󰈙",
                            Reference = "󰈇",
                            Folder = "󰉋",
                            EnumMember = "",
                            Constant = "󰏿",
                            Struct = "󰙅",
                            Event = "",
                            Operator = "󰆕",
                            TypeParameter = "",
                        },
                    })
                end,
            },
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                }, {
                    { name = "buffer" },
                })
            })

            cmp.setup.cmdline({ "/", "?" }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = "buffer" }
                })
            })

            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = "path" }
                }, {
                        { name = "cmdline" }
                    })
            })

            local capabilities = require("cmp_nvim_lsp").default_capabilities()
        end,
    },
}
