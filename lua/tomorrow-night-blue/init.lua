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
    diagnostics = {
      -- Inline diagnostics (virtual text)
      virtual_text = { italic = true },
    },
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

  local function apply_style(style, groups)
    if not style then
      return
    end
    for _, group in ipairs(groups) do
      highlights[group] = vim.tbl_extend("force", highlights[group] or {}, style)
    end
  end

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
  apply_style(M.config.styles.comments, { "Comment", "@comment" })

  apply_style(M.config.styles.keywords, {
    "Keyword",
    "@keyword",
    "@keyword.function",
    "@keyword.operator",
    "@keyword.return",
    "Conditional",
    "Repeat",
    "Label",
    "Exception",
    "Include",
    "Define",
    "Macro",
    "PreCondit",
    "Statement",
  })

  apply_style(M.config.styles.functions, {
    "Function",
    "@function",
    "@function.builtin",
    "@function.call",
    "@function.macro",
    "@method",
    "@method.call",
    "@constructor",
  })

  apply_style(M.config.styles.variables, {
    "Identifier",
    "@variable",
    "@variable.builtin",
    "@field",
    "@property",
    "@parameter",
    "@lsp.type.parameter",
    "@lsp.type.variable",
  })

  apply_style(M.config.styles.diagnostics and M.config.styles.diagnostics.virtual_text, {
    "DiagnosticVirtualTextError",
    "DiagnosticVirtualTextWarn",
    "DiagnosticVirtualTextInfo",
    "DiagnosticVirtualTextHint",
  })

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
