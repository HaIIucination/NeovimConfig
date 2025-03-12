return{
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
                ensure_installed = {"lua_ls", "pyright", "svlangserver", "verible"}
            })
        end
    },

    {
        "neovim/nvim-lspconfig",
        dependencies = { 'saghen/blink.cmp' },

        opts = {
            servers = {
                lua_ls = {},
                pyright = {},
                svlangserver = {
                    maxLineLength = 150,
                },
                verible = {},
            }
        },

        config = function(_, opts)
            local lspconfig = require('lspconfig')
            for server, config in pairs(opts.servers) do
                config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
                lspconfig[server].setup(config)
            end

            --lspconfig.lua_ls.setup{}
            --lspconfig.pyright.setup{}
            --lspconfig.svlangserver.setup{}
            --lspconfig.verible.setup{}

            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
