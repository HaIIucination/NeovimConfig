return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        local verible_verilog_lint = {

            name = "verible_verilog_lint",
            method = null_ls.methods.DIAGNOSTICS,
            filetypes = { "verilog", "systemverilog" },
            generator = null_ls.generator({
                command = "/usr/local/verible/bin/verible-verilog-lint", -- Adjust path if needed
                args = { "--lint_fatal", "--rules_config_search" },
                to_stdin = true,
                format = "line",
                on_output = function(line, params)
                    local row, col, message = line:match("(%d+):(%d+): (.+)")
                    if row and col and message then
                        return {
                            row = tonumber(row),
                            col = tonumber(col),
                            message = message,
                            severity = vim.diagnostic.severity.WARN,
                        }
                    end
                end,
            }),
        }

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.verible_verilog_format,
                verible_verilog_lint
            },
        })
        vim.keymap.set("n", "F", vim.lsp.buf.format, {})
    end,
}
