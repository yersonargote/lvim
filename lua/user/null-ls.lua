local M = {}

M.setup = function()
  local null_ls = require("null-ls")

  local sources = {

    -- Formatters
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.formatting.fixjson,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.rubocop,
    null_ls.builtins.formatting.ruff_format,

    -- Linters
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.diagnostics.rubocop,
    null_ls.builtins.diagnostics.erb_lint,
    null_ls.builtins.diagnostics.shellcheck,
    null_ls.builtins.diagnostics.markdownlint,
    null_ls.builtins.diagnostics.write_good,
    null_ls.builtins.diagnostics.erb_lint,
    null_ls.builtins.diagnostics.ruff,
  }

  -- Enable the formatters and linters.
  null_ls.register({ sources = sources })
end

return M
