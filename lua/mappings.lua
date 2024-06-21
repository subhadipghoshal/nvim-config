require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ff", ":Telescope <cr>")

map("n", "<leader>ts", function()
  require("nvchad.term").toggle({ pos = "sp", id ='abc' })
end, { desc = "Terminal toggle floating" })
map({ "n", "t" }, "<leader>tf", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm",}
end, { desc = "Terminal Toggle Floating term" })

map({ "n", "t"}, "<leader>tg", function()
  require("nvchad.term").toggle { pos = "float", id = "lgfloatTerm", cmd ='lazygit' }
end, { desc = "Terminal Toggle with lazygit"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
