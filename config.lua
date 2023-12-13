-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.format_on_save = {
  enabled = true,
  ---@usage pattern string pattern used for the autocommand (Default: '*')
  pattern = { "*.lua", "*.py" },
  ---@usage timeout number timeout in ms for the format request (Default: 1000)
  timeout = 1000,
}

lvim.builtin.project.ignore_lsp = { "copilot" }

reload "user.windows"
reload "user.settings"
reload "user.keymaps"
-- reload "user.null-ls"
require("user.null-ls").setup()
-- spec "user.null-ls"


table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  event = "InsertEnter",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    vim.defer_fn(function()
      require("copilot").setup()
      require("copilot_cmp").setup()
    end, 100)
  end,
})

table.insert(lvim.plugins, {
  "nvimtools/none-ls.nvim"
})
