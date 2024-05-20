return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "jdtls",
                    "html",
                    "clangd",
                    "cssls",
                    "rust_analyzer",
                    "marksman",
                    "intelephense",
                    "pyright",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.jdtls.setup({})
            lspconfig.html.setup({})
            lspconfig.clangd.setup({})
            lspconfig.cssls.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.marksman.setup({})
            lspconfig.intelephense.setup({})
            lspconfig.pyright.setup({})

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({"n"}, "<leader>ca", vim.lsp.buf.code_action, {})
        end
    }
}
