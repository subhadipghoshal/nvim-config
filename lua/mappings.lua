require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ff", ":Telescope <cr>")

map("n", "<leader>ts", function()
  vim.cmd('30 split')
  vim.cmd('term')
  -- require("nvchad.term").toggle({ pos = "sp", id ='splitTerm' })
end, { desc = "Terminal toggle below" })
map({ "n", "t" }, "<leader>tf", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm",}
end, { desc = "Terminal Toggle Floating term" })

map({ "n", "t"}, "<leader>tg", function()
  require("nvchad.term").toggle { pos = "float", id = "lgfloatTerm", cmd ='lazygit' }
end, { desc = "Terminal Toggle with lazygit"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")


map("n", "<leader>li", require("lspimport").import, {desc = "Resolve an import"})
