-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "radium",

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},

  telescope = {
    style = "borderless",
    extensions_list = { "themes", "terms", "noice", "zoxide" },
  },
  term = {
    float = {
      row = 0.1,
      col = 0.1,
      width = 0.9,
      height = 0.9,
    }
  },
  nvimtree = {
    view = {
      adaptive_size = false,
    },
    sort = {
      sorter = "case_sensitive",
    },
    modified = {
      enable = true
    },
    git = {
      enable = true,
      ignore = false,
    }
  }
}

return M
