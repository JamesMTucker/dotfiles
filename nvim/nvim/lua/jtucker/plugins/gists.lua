return {
  "Rawnly/gist.nvim",
  cmd = { "GistCreate", "GistCreateFromFile", "GistsList" },
  config = function()
    local status, gist = pcall(require, "gist")
    if not status then
      print("Error loading gist.nvim:", gist)
      return
    end

    gist.setup({
      private = false,
      clipboard = "+",
      list = {
        mappings = {
          next_file = "<C-n>",
          prev_file = "<C-p>",
        },
      },
    })
  end,
}

