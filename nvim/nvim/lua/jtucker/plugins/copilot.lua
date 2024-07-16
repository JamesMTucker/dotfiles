return {
  "github/copilot.vim",
  config = function()
    vim.keymap.set("i", "<C-j>", "copilot#Accept('<CR>')", { noremap = true, silent = true, expr = true, replace_keycodes = false })
    vim.g.copilot_no_tab_map = true
  end
}
