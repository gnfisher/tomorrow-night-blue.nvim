-- Tomorrow Night Blue color palette
-- Based on the classic Tomorrow theme family

local M = {}

M.colors = {
  -- Base colors
  bg = "#002451",
  bg_dark = "#001a3d",
  bg_highlight = "#00346e",
  bg_selection = "#003f8e",
  bg_visual = "#003f8e",
  bg_popup = "#001a3d",
  bg_statusline = "#00346e",
  bg_sidebar = "#001a3d",
  bg_float = "#001a3d",
  bg_search = "#003f8e",
  bg_cursorline = "#00346e",

  -- Foreground colors
  fg = "#ffffff",
  fg_dark = "#bbdaff",
  fg_gutter = "#7285b7",
  fg_sidebar = "#bbdaff",

  -- Syntax colors
  comment = "#7285b7",
  red = "#ff9da4",
  orange = "#ffc58f",
  yellow = "#ffeead",
  green = "#d1f1a9",
  aqua = "#99ffff",
  blue = "#bbdaff",
  purple = "#ebbbff",

  -- UI colors
  border = "#7285b7",
  error = "#ff9da4",
  warning = "#ffc58f",
  info = "#bbdaff",
  hint = "#99ffff",
  success = "#d1f1a9",

  -- Git colors
  git_add = "#d1f1a9",
  git_change = "#ffeead",
  git_delete = "#ff9da4",
  git_ignore = "#7285b7",

  -- Diff colors
  diff_add = "#1a3d1a",
  diff_change = "#3d3d1a",
  diff_delete = "#3d1a1a",
  diff_text = "#4d4d1a",

  -- Special
  none = "NONE",
}

return M
