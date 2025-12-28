-- Tomorrow Night Blue for Neovim
-- A port of the classic Tomorrow Night Blue theme from VS Code

local M = {}

M.config = {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
  },
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  
  vim.o.termguicolors = true
  vim.g.colors_name = "tomorrow-night-blue"

  local colors = require("tomorrow-night-blue.palette").colors
  local highlights = require("tomorrow-night-blue.highlights").setup(colors)

  -- Apply transparent background if enabled
  if M.config.transparent then
    highlights.Normal.bg = nil
    highlights.NormalFloat.bg = nil
    highlights.NormalNC.bg = nil
    highlights.SignColumn.bg = nil
    highlights.CursorLine.bg = nil
    highlights.LineNr.bg = nil
    highlights.Folded.bg = nil
  end

  -- Apply custom styles
  if M.config.styles.comments then
    highlights.Comment = vim.tbl_extend("force", highlights.Comment, M.config.styles.comments)
    highlights["@comment"] = vim.tbl_extend("force", highlights["@comment"], M.config.styles.comments)
  end
  
  if M.config.styles.keywords then
    highlights.Keyword = vim.tbl_extend("force", highlights.Keyword, M.config.styles.keywords)
    highlights["@keyword"] = vim.tbl_extend("force", highlights["@keyword"], M.config.styles.keywords)
  end
  
  if M.config.styles.functions then
    highlights.Function = vim.tbl_extend("force", highlights.Function, M.config.styles.functions)
    highlights["@function"] = vim.tbl_extend("force", highlights["@function"], M.config.styles.functions)
  end
  
  if M.config.styles.variables then
    highlights.Identifier = vim.tbl_extend("force", highlights.Identifier, M.config.styles.variables)
    highlights["@variable"] = vim.tbl_extend("force", highlights["@variable"], M.config.styles.variables)
  end

  -- Set highlight groups
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end

  -- Set terminal colors
  if M.config.terminal_colors then
    vim.g.terminal_color_0 = colors.bg
    vim.g.terminal_color_1 = colors.red
    vim.g.terminal_color_2 = colors.green
    vim.g.terminal_color_3 = colors.yellow
    vim.g.terminal_color_4 = colors.blue
    vim.g.terminal_color_5 = colors.purple
    vim.g.terminal_color_6 = colors.aqua
    vim.g.terminal_color_7 = colors.fg
    vim.g.terminal_color_8 = colors.comment
    vim.g.terminal_color_9 = colors.red
    vim.g.terminal_color_10 = colors.green
    vim.g.terminal_color_11 = colors.yellow
    vim.g.terminal_color_12 = colors.blue
    vim.g.terminal_color_13 = colors.purple
    vim.g.terminal_color_14 = colors.aqua
    vim.g.terminal_color_15 = colors.fg
  end
end

return M
