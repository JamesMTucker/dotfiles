vim.g.mapleader = " "

local km = vim.keymap

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})

km.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })
km.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
km.set("n", "<C-s>", "<cmd>w<CR>", { desc = "[W]rite" })

-- increment/decrement nums
km.set("n", "<leader>+", "<C-a>", { desc = "Increment num" })
km.set("n", "<leader>-", "<C-x>", { desc = "Decrement num" })

-- window splitting decisions
km.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
km.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
km.set("n", "<leader>se", "<C-w>=", { desc = "Equalize split" })
km.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close split" })
-- tab management
km.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
km.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
km.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
km.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
km.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in tab" })


