return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        {"antosha417/nvim-lsp-file-operations", config = true },
    },

    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        local keymap = vim.keymap
        local opts = { noremap = true, silent = true }
        local on_attach = function(client, bufnr)
            opts.buffer = bufnr

            -- keymaps
            opts.desc = "Show LSP references"
            keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

            opts.desc = "Go to declaration"
            keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

            opts.desc = "Show LSP definitions"
            keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

            opts.desc = "Show LSP implementations"
            keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

            opts.desc = "Show code actions"
            keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

            opts.desc = "Smart rename"
            keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

            opts.desc = "Show buffer diagnostics"
            keymap.set("n", "<leader>cD", "<cmd>Telescope diagnostics bufrnr=0<CR>", opts)

            opts.desc = "Show line diagnostics"
            keymap.set("n", "<leader>cd",  vim.diagnostic.open_float, opts)

            opts.desc = "Show documentation"
            keymap.set("n", "<leader>k", vim.lsp.buf.hover, opts)
        end

        local capabilities = cmp_nvim_lsp.default_capabilities()

--        lspconfig["ltex"].setup({})

        lspconfig["html"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["clangd"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            }
        })

        lspconfig["rust_analyzer"].setup({
            on_attach = on_attach,
            settings = {
                ['rust-analyzer'] = {
                    diagnostics = {
                        enable = true,
                    },
                    cargo = {
                        allFeatures = true,
                    }
                }
            }
        })

        lspconfig["pyright"].setup({
            on_attach = on_attach,

        })

        lspconfig["tsserver"].setup({
            on_attach = on_attach,
            filetypes = {"typescript", "javascript"},
            root_dir =  lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git")
        })
    end,
}
