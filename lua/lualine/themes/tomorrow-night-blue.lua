-- Tomorrow Night Blue Lualine Theme
-- Integrates with lualine.nvim statusline

local colors = require("tomorrow-night-blue.palette").colors

local tomorrow_night_blue = {}

tomorrow_night_blue.normal = {
  a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
  b = { fg = colors.fg, bg = colors.bg_highlight },
  c = { fg = colors.fg, bg = colors.bg_statusline },
}

tomorrow_night_blue.insert = {
  a = { fg = colors.bg, bg = colors.green, gui = "bold" },
  b = { fg = colors.fg, bg = colors.bg_highlight },
  c = { fg = colors.fg, bg = colors.bg_statusline },
}

tomorrow_night_blue.visual = {
  a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
  b = { fg = colors.fg, bg = colors.bg_highlight },
  c = { fg = colors.fg, bg = colors.bg_statusline },
}

tomorrow_night_blue.replace = {
  a = { fg = colors.bg, bg = colors.red, gui = "bold" },
  b = { fg = colors.fg, bg = colors.bg_highlight },
  c = { fg = colors.fg, bg = colors.bg_statusline },
}

tomorrow_night_blue.command = {
  a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
  b = { fg = colors.fg, bg = colors.bg_highlight },
  c = { fg = colors.fg, bg = colors.bg_statusline },
}

tomorrow_night_blue.terminal = {
  a = { fg = colors.bg, bg = colors.aqua, gui = "bold" },
  b = { fg = colors.fg, bg = colors.bg_highlight },
  c = { fg = colors.fg, bg = colors.bg_statusline },
}

tomorrow_night_blue.inactive = {
  a = { fg = colors.comment, bg = colors.bg_statusline },
  b = { fg = colors.comment, bg = colors.bg_statusline },
  c = { fg = colors.comment, bg = colors.bg_statusline },
}

return tomorrow_night_blue
