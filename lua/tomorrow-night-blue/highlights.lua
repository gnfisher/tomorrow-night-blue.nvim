-- Tomorrow Night Blue highlight groups
local M = {}

function M.setup(colors)
  local highlights = {
    -- =============================================================
    -- Editor
    -- =============================================================
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.bg_float },
    NormalNC = { fg = colors.fg, bg = colors.bg },
    NormalSB = { fg = colors.fg_sidebar, bg = colors.bg_sidebar },
    Cursor = { fg = colors.bg, bg = colors.fg },
    CursorIM = { fg = colors.bg, bg = colors.fg },
    CursorLine = { bg = colors.bg_cursorline },
    CursorLineNr = { fg = colors.yellow, bold = true },
    CursorColumn = { bg = colors.bg_cursorline },
    ColorColumn = { bg = colors.bg_highlight },
    Conceal = { fg = colors.comment },
    Directory = { fg = colors.blue },
    DiffAdd = { bg = colors.diff_add },
    DiffChange = { bg = colors.diff_change },
    DiffDelete = { bg = colors.diff_delete },
    DiffText = { bg = colors.diff_text },
    EndOfBuffer = { fg = colors.bg },
    ErrorMsg = { fg = colors.red },
    VertSplit = { fg = colors.border },
    WinSeparator = { fg = colors.border },
    Folded = { fg = colors.comment, bg = colors.bg_highlight },
    FoldColumn = { fg = colors.comment, bg = colors.bg },
    SignColumn = { fg = colors.fg_gutter, bg = colors.bg },
    IncSearch = { fg = colors.bg, bg = colors.orange },
    Substitute = { fg = colors.bg, bg = colors.red },
    LineNr = { fg = colors.fg_gutter },
    MatchParen = { fg = colors.orange, bold = true },
    ModeMsg = { fg = colors.fg, bold = true },
    MsgArea = { fg = colors.fg },
    MoreMsg = { fg = colors.blue },
    NonText = { fg = colors.comment },
    Pmenu = { fg = colors.fg, bg = colors.bg_popup },
    PmenuSel = { fg = colors.fg, bg = colors.bg_selection },
    PmenuSbar = { bg = colors.bg_highlight },
    PmenuThumb = { bg = colors.fg_gutter },
    Question = { fg = colors.blue },
    QuickFixLine = { bg = colors.bg_visual, bold = true },
    Search = { fg = colors.bg, bg = colors.yellow },
    SpecialKey = { fg = colors.comment },
    SpellBad = { sp = colors.red, undercurl = true },
    SpellCap = { sp = colors.warning, undercurl = true },
    SpellLocal = { sp = colors.info, undercurl = true },
    SpellRare = { sp = colors.purple, undercurl = true },
    StatusLine = { fg = colors.fg, bg = colors.bg_statusline },
    StatusLineNC = { fg = colors.fg_gutter, bg = colors.bg_statusline },
    TabLine = { fg = colors.fg_gutter, bg = colors.bg_statusline },
    TabLineFill = { bg = colors.bg_dark },
    TabLineSel = { fg = colors.fg, bg = colors.bg },
    Title = { fg = colors.blue, bold = true },
    Visual = { bg = colors.bg_visual },
    VisualNOS = { bg = colors.bg_visual },
    WarningMsg = { fg = colors.warning },
    Whitespace = { fg = colors.comment },
    WildMenu = { bg = colors.bg_visual },
    WinBar = { fg = colors.blue, bold = true },
    WinBarNC = { fg = colors.fg_gutter },

    -- =============================================================
    -- Syntax
    -- =============================================================
    Comment = { fg = colors.comment, italic = true },
    Constant = { fg = colors.orange },
    String = { fg = colors.green },
    Character = { fg = colors.green },
    Number = { fg = colors.orange },
    Boolean = { fg = colors.orange },
    Float = { fg = colors.orange },
    Identifier = { fg = colors.red },
    Function = { fg = colors.blue },
    Statement = { fg = colors.purple },
    Conditional = { fg = colors.purple },
    Repeat = { fg = colors.purple },
    Label = { fg = colors.purple },
    Operator = { fg = colors.aqua },
    Keyword = { fg = colors.purple },
    Exception = { fg = colors.purple },
    PreProc = { fg = colors.yellow },
    Include = { fg = colors.purple },
    Define = { fg = colors.purple },
    Macro = { fg = colors.purple },
    PreCondit = { fg = colors.yellow },
    Type = { fg = colors.yellow },
    StorageClass = { fg = colors.yellow },
    Structure = { fg = colors.yellow },
    Typedef = { fg = colors.yellow },
    Special = { fg = colors.aqua },
    SpecialChar = { fg = colors.aqua },
    Tag = { fg = colors.red },
    Delimiter = { fg = colors.fg },
    SpecialComment = { fg = colors.comment },
    Debug = { fg = colors.orange },
    Underlined = { underline = true },
    Ignore = { fg = colors.comment },
    Error = { fg = colors.red },
    Todo = { fg = colors.bg, bg = colors.yellow, bold = true },

    -- =============================================================
    -- Diagnostics
    -- =============================================================
    DiagnosticError = { fg = colors.error },
    DiagnosticWarn = { fg = colors.warning },
    DiagnosticInfo = { fg = colors.info },
    DiagnosticHint = { fg = colors.hint },
    DiagnosticOk = { fg = colors.success },
    DiagnosticVirtualTextError = { fg = colors.error, bg = colors.bg_highlight },
    DiagnosticVirtualTextWarn = { fg = colors.warning, bg = colors.bg_highlight },
    DiagnosticVirtualTextInfo = { fg = colors.info, bg = colors.bg_highlight },
    DiagnosticVirtualTextHint = { fg = colors.hint, bg = colors.bg_highlight },
    DiagnosticUnderlineError = { sp = colors.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = colors.warning, undercurl = true },
    DiagnosticUnderlineInfo = { sp = colors.info, undercurl = true },
    DiagnosticUnderlineHint = { sp = colors.hint, undercurl = true },
    DiagnosticFloatingError = { fg = colors.error },
    DiagnosticFloatingWarn = { fg = colors.warning },
    DiagnosticFloatingInfo = { fg = colors.info },
    DiagnosticFloatingHint = { fg = colors.hint },
    DiagnosticSignError = { fg = colors.error },
    DiagnosticSignWarn = { fg = colors.warning },
    DiagnosticSignInfo = { fg = colors.info },
    DiagnosticSignHint = { fg = colors.hint },

    -- =============================================================
    -- LSP
    -- =============================================================
    LspReferenceText = { bg = colors.bg_highlight },
    LspReferenceRead = { bg = colors.bg_highlight },
    LspReferenceWrite = { bg = colors.bg_highlight },
    LspSignatureActiveParameter = { fg = colors.orange, bold = true },
    LspCodeLens = { fg = colors.comment },
    LspCodeLensSeparator = { fg = colors.comment },
    LspInfoBorder = { fg = colors.border },

    -- =============================================================
    -- Treesitter
    -- =============================================================
    ["@text"] = { fg = colors.fg },
    ["@text.literal"] = { fg = colors.green },
    ["@text.reference"] = { fg = colors.blue },
    ["@text.title"] = { fg = colors.blue, bold = true },
    ["@text.uri"] = { fg = colors.aqua, underline = true },
    ["@text.underline"] = { underline = true },
    ["@text.todo"] = { fg = colors.bg, bg = colors.yellow },
    ["@text.warning"] = { fg = colors.warning },
    ["@text.danger"] = { fg = colors.error },
    ["@text.diff.add"] = { fg = colors.git_add },
    ["@text.diff.delete"] = { fg = colors.git_delete },

    ["@comment"] = { fg = colors.comment, italic = true },
    ["@punctuation"] = { fg = colors.fg },
    ["@punctuation.delimiter"] = { fg = colors.fg },
    ["@punctuation.bracket"] = { fg = colors.fg },
    ["@punctuation.special"] = { fg = colors.aqua },

    ["@constant"] = { fg = colors.orange },
    ["@constant.builtin"] = { fg = colors.orange },
    ["@constant.macro"] = { fg = colors.orange },

    ["@define"] = { fg = colors.purple },
    ["@macro"] = { fg = colors.purple },

    ["@string"] = { fg = colors.green },
    ["@string.regex"] = { fg = colors.aqua },
    ["@string.escape"] = { fg = colors.aqua },
    ["@string.special"] = { fg = colors.aqua },

    ["@character"] = { fg = colors.green },
    ["@character.special"] = { fg = colors.aqua },

    ["@number"] = { fg = colors.orange },
    ["@boolean"] = { fg = colors.orange },
    ["@float"] = { fg = colors.orange },

    ["@function"] = { fg = colors.blue },
    ["@function.builtin"] = { fg = colors.blue },
    ["@function.call"] = { fg = colors.blue },
    ["@function.macro"] = { fg = colors.purple },

    ["@method"] = { fg = colors.blue },
    ["@method.call"] = { fg = colors.blue },

    ["@constructor"] = { fg = colors.yellow },
    ["@parameter"] = { fg = colors.red, italic = true },

    ["@keyword"] = { fg = colors.purple },
    ["@keyword.function"] = { fg = colors.purple },
    ["@keyword.operator"] = { fg = colors.purple },
    ["@keyword.return"] = { fg = colors.purple },

    ["@conditional"] = { fg = colors.purple },
    ["@repeat"] = { fg = colors.purple },
    ["@label"] = { fg = colors.purple },

    ["@operator"] = { fg = colors.aqua },

    ["@exception"] = { fg = colors.purple },

    ["@variable"] = { fg = colors.fg },
    ["@variable.builtin"] = { fg = colors.red },

    ["@type"] = { fg = colors.yellow },
    ["@type.builtin"] = { fg = colors.yellow },
    ["@type.definition"] = { fg = colors.yellow },
    ["@type.qualifier"] = { fg = colors.purple },

    ["@storageclass"] = { fg = colors.purple },
    ["@structure"] = { fg = colors.yellow },
    ["@namespace"] = { fg = colors.yellow },
    ["@include"] = { fg = colors.purple },
    ["@preproc"] = { fg = colors.purple },

    ["@debug"] = { fg = colors.orange },
    ["@tag"] = { fg = colors.red },
    ["@tag.attribute"] = { fg = colors.orange },
    ["@tag.delimiter"] = { fg = colors.fg },
    
    ["@attribute"] = { fg = colors.orange },
    ["@field"] = { fg = colors.red },
    ["@property"] = { fg = colors.red },

    -- Semantic tokens
    ["@lsp.type.class"] = { fg = colors.yellow },
    ["@lsp.type.decorator"] = { fg = colors.orange },
    ["@lsp.type.enum"] = { fg = colors.yellow },
    ["@lsp.type.enumMember"] = { fg = colors.orange },
    ["@lsp.type.function"] = { fg = colors.blue },
    ["@lsp.type.interface"] = { fg = colors.yellow },
    ["@lsp.type.macro"] = { fg = colors.purple },
    ["@lsp.type.method"] = { fg = colors.blue },
    ["@lsp.type.namespace"] = { fg = colors.yellow },
    ["@lsp.type.parameter"] = { fg = colors.red, italic = true },
    ["@lsp.type.property"] = { fg = colors.red },
    ["@lsp.type.struct"] = { fg = colors.yellow },
    ["@lsp.type.type"] = { fg = colors.yellow },
    ["@lsp.type.typeParameter"] = { fg = colors.yellow },
    ["@lsp.type.variable"] = { fg = colors.fg },

    -- =============================================================
    -- Git Signs
    -- =============================================================
    GitSignsAdd = { fg = colors.git_add },
    GitSignsChange = { fg = colors.git_change },
    GitSignsDelete = { fg = colors.git_delete },
    GitSignsAddNr = { fg = colors.git_add },
    GitSignsChangeNr = { fg = colors.git_change },
    GitSignsDeleteNr = { fg = colors.git_delete },
    GitSignsAddLn = { bg = colors.diff_add },
    GitSignsChangeLn = { bg = colors.diff_change },
    GitSignsDeleteLn = { bg = colors.diff_delete },
    GitSignsCurrentLineBlame = { fg = colors.comment },

    -- =============================================================
    -- Telescope
    -- =============================================================
    TelescopeNormal = { fg = colors.fg, bg = colors.bg_float },
    TelescopeBorder = { fg = colors.border, bg = colors.bg_float },
    TelescopePromptNormal = { fg = colors.fg, bg = colors.bg_highlight },
    TelescopePromptBorder = { fg = colors.border, bg = colors.bg_highlight },
    TelescopePromptTitle = { fg = colors.bg, bg = colors.blue, bold = true },
    TelescopePromptPrefix = { fg = colors.blue },
    TelescopePromptCounter = { fg = colors.comment },
    TelescopePreviewNormal = { fg = colors.fg, bg = colors.bg_float },
    TelescopePreviewBorder = { fg = colors.border, bg = colors.bg_float },
    TelescopePreviewTitle = { fg = colors.bg, bg = colors.green, bold = true },
    TelescopeResultsNormal = { fg = colors.fg, bg = colors.bg_float },
    TelescopeResultsBorder = { fg = colors.border, bg = colors.bg_float },
    TelescopeResultsTitle = { fg = colors.bg, bg = colors.purple, bold = true },
    TelescopeSelection = { fg = colors.fg, bg = colors.bg_selection },
    TelescopeSelectionCaret = { fg = colors.blue, bg = colors.bg_selection },
    TelescopeMultiSelection = { fg = colors.fg, bg = colors.bg_visual },
    TelescopeMultiIcon = { fg = colors.blue },
    TelescopeMatching = { fg = colors.orange, bold = true },

    -- =============================================================
    -- nvim-cmp
    -- =============================================================
    CmpItemAbbr = { fg = colors.fg },
    CmpItemAbbrDeprecated = { fg = colors.comment, strikethrough = true },
    CmpItemAbbrMatch = { fg = colors.blue, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = colors.blue, bold = true },
    CmpItemKind = { fg = colors.purple },
    CmpItemMenu = { fg = colors.comment },
    CmpItemKindClass = { fg = colors.yellow },
    CmpItemKindColor = { fg = colors.green },
    CmpItemKindConstant = { fg = colors.orange },
    CmpItemKindConstructor = { fg = colors.blue },
    CmpItemKindEnum = { fg = colors.yellow },
    CmpItemKindEnumMember = { fg = colors.orange },
    CmpItemKindEvent = { fg = colors.purple },
    CmpItemKindField = { fg = colors.red },
    CmpItemKindFile = { fg = colors.blue },
    CmpItemKindFolder = { fg = colors.blue },
    CmpItemKindFunction = { fg = colors.blue },
    CmpItemKindInterface = { fg = colors.yellow },
    CmpItemKindKeyword = { fg = colors.purple },
    CmpItemKindMethod = { fg = colors.blue },
    CmpItemKindModule = { fg = colors.yellow },
    CmpItemKindOperator = { fg = colors.aqua },
    CmpItemKindProperty = { fg = colors.red },
    CmpItemKindReference = { fg = colors.red },
    CmpItemKindSnippet = { fg = colors.green },
    CmpItemKindStruct = { fg = colors.yellow },
    CmpItemKindText = { fg = colors.fg },
    CmpItemKindTypeParameter = { fg = colors.yellow },
    CmpItemKindUnit = { fg = colors.orange },
    CmpItemKindValue = { fg = colors.orange },
    CmpItemKindVariable = { fg = colors.red },
    CmpDocumentation = { fg = colors.fg, bg = colors.bg_float },
    CmpDocumentationBorder = { fg = colors.border, bg = colors.bg_float },

    -- =============================================================
    -- oil.nvim
    -- =============================================================
    OilDir = { fg = colors.blue, bold = true },
    OilDirIcon = { fg = colors.blue },
    OilLink = { fg = colors.aqua },
    OilLinkTarget = { fg = colors.comment },
    OilCopy = { fg = colors.green, bold = true },
    OilMove = { fg = colors.yellow, bold = true },
    OilChange = { fg = colors.yellow },
    OilCreate = { fg = colors.green },
    OilDelete = { fg = colors.red },
    OilPermissionNone = { fg = colors.comment },
    OilPermissionRead = { fg = colors.green },
    OilPermissionWrite = { fg = colors.yellow },
    OilPermissionExecute = { fg = colors.red },
    OilTypeDir = { fg = colors.blue },
    OilTypeFile = { fg = colors.fg },
    OilTypeLink = { fg = colors.aqua },
    OilTypeFifo = { fg = colors.purple },
    OilTypeSocket = { fg = colors.purple },
    OilSize = { fg = colors.comment },
    OilMtime = { fg = colors.comment },

    -- =============================================================
    -- NvimTree
    -- =============================================================
    NvimTreeNormal = { fg = colors.fg, bg = colors.bg_sidebar },
    NvimTreeNormalNC = { fg = colors.fg, bg = colors.bg_sidebar },
    NvimTreeRootFolder = { fg = colors.blue, bold = true },
    NvimTreeFolderIcon = { fg = colors.blue },
    NvimTreeFolderName = { fg = colors.blue },
    NvimTreeOpenedFolderName = { fg = colors.blue, bold = true },
    NvimTreeEmptyFolderName = { fg = colors.comment },
    NvimTreeFileIcon = { fg = colors.fg },
    NvimTreeFileName = { fg = colors.fg },
    NvimTreeSpecialFile = { fg = colors.yellow, bold = true },
    NvimTreeImageFile = { fg = colors.purple },
    NvimTreeIndentMarker = { fg = colors.fg_gutter },
    NvimTreeGitDirty = { fg = colors.git_change },
    NvimTreeGitStaged = { fg = colors.git_add },
    NvimTreeGitMerge = { fg = colors.warning },
    NvimTreeGitRenamed = { fg = colors.purple },
    NvimTreeGitNew = { fg = colors.git_add },
    NvimTreeGitDeleted = { fg = colors.git_delete },
    NvimTreeGitIgnored = { fg = colors.git_ignore },
    NvimTreeWindowPicker = { fg = colors.fg, bg = colors.bg_selection, bold = true },

    -- =============================================================
    -- Neo-tree
    -- =============================================================
    NeoTreeNormal = { fg = colors.fg, bg = colors.bg_sidebar },
    NeoTreeNormalNC = { fg = colors.fg, bg = colors.bg_sidebar },
    NeoTreeDirectoryIcon = { fg = colors.blue },
    NeoTreeDirectoryName = { fg = colors.blue },
    NeoTreeRootName = { fg = colors.blue, bold = true },
    NeoTreeFileName = { fg = colors.fg },
    NeoTreeFileIcon = { fg = colors.fg },
    NeoTreeGitAdded = { fg = colors.git_add },
    NeoTreeGitConflict = { fg = colors.warning },
    NeoTreeGitDeleted = { fg = colors.git_delete },
    NeoTreeGitIgnored = { fg = colors.git_ignore },
    NeoTreeGitModified = { fg = colors.git_change },
    NeoTreeGitUntracked = { fg = colors.git_add },
    NeoTreeIndentMarker = { fg = colors.fg_gutter },
    NeoTreeSymbolicLinkTarget = { fg = colors.aqua },

    -- =============================================================
    -- Lazy.nvim
    -- =============================================================
    LazyNormal = { fg = colors.fg, bg = colors.bg_float },
    LazyButton = { fg = colors.fg, bg = colors.bg_highlight },
    LazyButtonActive = { fg = colors.bg, bg = colors.blue },
    LazyH1 = { fg = colors.bg, bg = colors.blue, bold = true },
    LazyH2 = { fg = colors.blue, bold = true },
    LazyProgressDone = { fg = colors.green },
    LazyProgressTodo = { fg = colors.comment },
    LazySpecial = { fg = colors.aqua },
    LazyReasonCmd = { fg = colors.yellow },
    LazyReasonEvent = { fg = colors.purple },
    LazyReasonFt = { fg = colors.blue },
    LazyReasonKeys = { fg = colors.orange },
    LazyReasonPlugin = { fg = colors.aqua },
    LazyReasonSource = { fg = colors.green },
    LazyReasonStart = { fg = colors.red },

    -- =============================================================
    -- Mason
    -- =============================================================
    MasonNormal = { fg = colors.fg, bg = colors.bg_float },
    MasonHeader = { fg = colors.bg, bg = colors.blue },
    MasonHeaderSecondary = { fg = colors.bg, bg = colors.purple },
    MasonHighlight = { fg = colors.blue },
    MasonHighlightBlock = { fg = colors.bg, bg = colors.green },
    MasonHighlightBlockBold = { fg = colors.bg, bg = colors.green, bold = true },
    MasonHighlightBlockBoldSecondary = { fg = colors.bg, bg = colors.purple, bold = true },
    MasonHighlightSecondary = { fg = colors.purple },
    MasonMuted = { fg = colors.comment },
    MasonMutedBlock = { fg = colors.fg, bg = colors.bg_highlight },

    -- =============================================================
    -- Which Key
    -- =============================================================
    WhichKey = { fg = colors.blue },
    WhichKeyGroup = { fg = colors.purple },
    WhichKeyDesc = { fg = colors.fg },
    WhichKeySeperator = { fg = colors.comment },
    WhichKeySeparator = { fg = colors.comment },
    WhichKeyFloat = { bg = colors.bg_float },
    WhichKeyValue = { fg = colors.comment },

    -- =============================================================
    -- Indent Blankline
    -- =============================================================
    IndentBlanklineChar = { fg = colors.bg_highlight },
    IndentBlanklineContextChar = { fg = colors.purple },
    IndentBlanklineContextStart = { sp = colors.purple, underline = true },
    IblIndent = { fg = colors.bg_highlight },
    IblScope = { fg = colors.purple },

    -- =============================================================
    -- Dashboard
    -- =============================================================
    DashboardHeader = { fg = colors.blue },
    DashboardCenter = { fg = colors.green },
    DashboardFooter = { fg = colors.comment },
    DashboardShortCut = { fg = colors.yellow },
    DashboardProjectTitle = { fg = colors.blue, bold = true },
    DashboardProjectTitleIcon = { fg = colors.blue },
    DashboardProjectIcon = { fg = colors.yellow },
    DashboardMruTitle = { fg = colors.blue, bold = true },
    DashboardMruIcon = { fg = colors.blue },
    DashboardFiles = { fg = colors.fg },
    DashboardDesc = { fg = colors.aqua },
    DashboardKey = { fg = colors.orange },
    DashboardIcon = { fg = colors.blue },

    -- =============================================================
    -- Alpha
    -- =============================================================
    AlphaHeader = { fg = colors.blue },
    AlphaButtons = { fg = colors.green },
    AlphaShortcut = { fg = colors.yellow },
    AlphaFooter = { fg = colors.comment },

    -- =============================================================
    -- Notify
    -- =============================================================
    NotifyERRORBorder = { fg = colors.error },
    NotifyERRORIcon = { fg = colors.error },
    NotifyERRORTitle = { fg = colors.error },
    NotifyWARNBorder = { fg = colors.warning },
    NotifyWARNIcon = { fg = colors.warning },
    NotifyWARNTitle = { fg = colors.warning },
    NotifyINFOBorder = { fg = colors.info },
    NotifyINFOIcon = { fg = colors.info },
    NotifyINFOTitle = { fg = colors.info },
    NotifyDEBUGBorder = { fg = colors.comment },
    NotifyDEBUGIcon = { fg = colors.comment },
    NotifyDEBUGTitle = { fg = colors.comment },
    NotifyTRACEBorder = { fg = colors.purple },
    NotifyTRACEIcon = { fg = colors.purple },
    NotifyTRACETitle = { fg = colors.purple },
    NotifyBackground = { bg = colors.bg },

    -- =============================================================
    -- Noice
    -- =============================================================
    NoiceCmdlineIcon = { fg = colors.blue },
    NoiceCmdlineIconSearch = { fg = colors.yellow },
    NoiceCmdlinePopup = { fg = colors.fg, bg = colors.bg_float },
    NoiceCmdlinePopupBorder = { fg = colors.border },
    NoiceCmdlinePopupBorderSearch = { fg = colors.yellow },
    NoiceConfirm = { fg = colors.fg, bg = colors.bg_float },
    NoiceConfirmBorder = { fg = colors.border },
    NoiceMini = { fg = colors.fg, bg = colors.bg_statusline },
    NoicePopup = { fg = colors.fg, bg = colors.bg_float },
    NoicePopupBorder = { fg = colors.border },
    NoicePopupmenu = { fg = colors.fg, bg = colors.bg_popup },
    NoicePopupmenuBorder = { fg = colors.border },
    NoicePopupmenuSelected = { bg = colors.bg_selection },
    NoiceScrollbar = { fg = colors.fg_gutter },
    NoiceScrollbarThumb = { bg = colors.fg_gutter },

    -- =============================================================
    -- Trouble
    -- =============================================================
    TroubleNormal = { fg = colors.fg, bg = colors.bg_sidebar },
    TroubleNormalNC = { fg = colors.fg, bg = colors.bg_sidebar },
    TroubleCount = { fg = colors.purple, bg = colors.bg_highlight },
    TroubleFile = { fg = colors.fg },
    TroubleFoldIcon = { fg = colors.comment },
    TroubleLocation = { fg = colors.comment },
    TroublePreview = { fg = colors.blue },
    TroubleSignError = { fg = colors.error },
    TroubleSignHint = { fg = colors.hint },
    TroubleSignInformation = { fg = colors.info },
    TroubleSignWarning = { fg = colors.warning },
    TroubleSource = { fg = colors.comment },
    TroubleText = { fg = colors.fg },

    -- =============================================================
    -- Bufferline
    -- =============================================================
    BufferLineFill = { bg = colors.bg_dark },
    BufferLineBackground = { fg = colors.comment, bg = colors.bg_dark },
    BufferLineBuffer = { fg = colors.comment, bg = colors.bg_dark },
    BufferLineBufferSelected = { fg = colors.fg, bg = colors.bg, bold = true },
    BufferLineBufferVisible = { fg = colors.fg, bg = colors.bg_statusline },
    BufferLineCloseButton = { fg = colors.comment, bg = colors.bg_dark },
    BufferLineCloseButtonSelected = { fg = colors.red, bg = colors.bg },
    BufferLineCloseButtonVisible = { fg = colors.comment, bg = colors.bg_statusline },
    BufferLineIndicatorSelected = { fg = colors.blue, bg = colors.bg },
    BufferLineIndicatorVisible = { fg = colors.bg_statusline, bg = colors.bg_statusline },
    BufferLineModified = { fg = colors.git_change, bg = colors.bg_dark },
    BufferLineModifiedSelected = { fg = colors.git_change, bg = colors.bg },
    BufferLineModifiedVisible = { fg = colors.git_change, bg = colors.bg_statusline },
    BufferLineSeparator = { fg = colors.bg_dark, bg = colors.bg_dark },
    BufferLineSeparatorSelected = { fg = colors.bg_dark, bg = colors.bg },
    BufferLineSeparatorVisible = { fg = colors.bg_dark, bg = colors.bg_statusline },
    BufferLineTab = { fg = colors.comment, bg = colors.bg_dark },
    BufferLineTabSelected = { fg = colors.blue, bg = colors.bg },
    BufferLineTabClose = { fg = colors.red, bg = colors.bg_dark },

    -- =============================================================
    -- Lualine (for lualine theme consistency)
    -- =============================================================
    lualine_a_normal = { fg = colors.bg, bg = colors.blue, bold = true },
    lualine_b_normal = { fg = colors.fg, bg = colors.bg_highlight },
    lualine_c_normal = { fg = colors.fg, bg = colors.bg_statusline },
    lualine_a_insert = { fg = colors.bg, bg = colors.green, bold = true },
    lualine_a_visual = { fg = colors.bg, bg = colors.purple, bold = true },
    lualine_a_replace = { fg = colors.bg, bg = colors.red, bold = true },
    lualine_a_command = { fg = colors.bg, bg = colors.yellow, bold = true },

    -- =============================================================
    -- Gitsigns
    -- =============================================================
    GitGutterAdd = { fg = colors.git_add },
    GitGutterChange = { fg = colors.git_change },
    GitGutterDelete = { fg = colors.git_delete },

    -- =============================================================
    -- Leap
    -- =============================================================
    LeapMatch = { fg = colors.fg, bg = colors.purple, bold = true },
    LeapLabelPrimary = { fg = colors.bg, bg = colors.blue, bold = true },
    LeapLabelSecondary = { fg = colors.bg, bg = colors.green, bold = true },
    LeapBackdrop = { fg = colors.comment },

    -- =============================================================
    -- Flash
    -- =============================================================
    FlashMatch = { fg = colors.fg, bg = colors.bg_highlight },
    FlashCurrent = { fg = colors.bg, bg = colors.yellow },
    FlashLabel = { fg = colors.bg, bg = colors.blue, bold = true },
    FlashBackdrop = { fg = colors.comment },

    -- =============================================================
    -- Illuminate
    -- =============================================================
    IlluminatedWordText = { bg = colors.bg_highlight },
    IlluminatedWordRead = { bg = colors.bg_highlight },
    IlluminatedWordWrite = { bg = colors.bg_highlight },

    -- =============================================================
    -- Mini.nvim
    -- =============================================================
    MiniCompletionActiveParameter = { underline = true },
    MiniCursorword = { bg = colors.bg_highlight },
    MiniCursorwordCurrent = { bg = colors.bg_highlight },
    MiniIndentscopeSymbol = { fg = colors.purple },
    MiniIndentscopePrefix = { nocombine = true },
    MiniJump = { fg = colors.bg, bg = colors.orange },
    MiniJump2dSpot = { fg = colors.bg, bg = colors.blue, bold = true },
    MiniStarterCurrent = { nocombine = true },
    MiniStarterFooter = { fg = colors.comment, italic = true },
    MiniStarterHeader = { fg = colors.blue },
    MiniStarterInactive = { fg = colors.comment },
    MiniStarterItem = { fg = colors.fg },
    MiniStarterItemBullet = { fg = colors.border },
    MiniStarterItemPrefix = { fg = colors.yellow },
    MiniStarterSection = { fg = colors.blue },
    MiniStarterQuery = { fg = colors.info },
    MiniStatuslineDevinfo = { fg = colors.fg, bg = colors.bg_highlight },
    MiniStatuslineFileinfo = { fg = colors.fg, bg = colors.bg_highlight },
    MiniStatuslineFilename = { fg = colors.fg, bg = colors.bg_statusline },
    MiniStatuslineInactive = { fg = colors.comment, bg = colors.bg_statusline },
    MiniStatuslineModeCommand = { fg = colors.bg, bg = colors.yellow, bold = true },
    MiniStatuslineModeInsert = { fg = colors.bg, bg = colors.green, bold = true },
    MiniStatuslineModeNormal = { fg = colors.bg, bg = colors.blue, bold = true },
    MiniStatuslineModeOther = { fg = colors.bg, bg = colors.aqua, bold = true },
    MiniStatuslineModeReplace = { fg = colors.bg, bg = colors.red, bold = true },
    MiniStatuslineModeVisual = { fg = colors.bg, bg = colors.purple, bold = true },
    MiniSurround = { fg = colors.bg, bg = colors.orange },
    MiniTablineCurrent = { fg = colors.fg, bg = colors.bg },
    MiniTablineFill = { bg = colors.bg_dark },
    MiniTablineHidden = { fg = colors.comment, bg = colors.bg_statusline },
    MiniTablineModifiedCurrent = { fg = colors.warning, bg = colors.bg },
    MiniTablineModifiedHidden = { fg = colors.warning, bg = colors.bg_statusline },
    MiniTablineModifiedVisible = { fg = colors.warning, bg = colors.bg_statusline },
    MiniTablineTabpagesection = { fg = colors.fg, bg = colors.bg_highlight },
    MiniTablineVisible = { fg = colors.fg, bg = colors.bg_statusline },
    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = colors.red, bold = true },
    MiniTestPass = { fg = colors.green, bold = true },
    MiniTrailspace = { bg = colors.red },

    -- =============================================================
    -- Navic (breadcrumbs)
    -- =============================================================
    NavicIconsFile = { fg = colors.fg },
    NavicIconsModule = { fg = colors.yellow },
    NavicIconsNamespace = { fg = colors.yellow },
    NavicIconsPackage = { fg = colors.yellow },
    NavicIconsClass = { fg = colors.yellow },
    NavicIconsMethod = { fg = colors.blue },
    NavicIconsProperty = { fg = colors.red },
    NavicIconsField = { fg = colors.red },
    NavicIconsConstructor = { fg = colors.yellow },
    NavicIconsEnum = { fg = colors.yellow },
    NavicIconsInterface = { fg = colors.yellow },
    NavicIconsFunction = { fg = colors.blue },
    NavicIconsVariable = { fg = colors.red },
    NavicIconsConstant = { fg = colors.orange },
    NavicIconsString = { fg = colors.green },
    NavicIconsNumber = { fg = colors.orange },
    NavicIconsBoolean = { fg = colors.orange },
    NavicIconsArray = { fg = colors.yellow },
    NavicIconsObject = { fg = colors.yellow },
    NavicIconsKey = { fg = colors.purple },
    NavicIconsNull = { fg = colors.orange },
    NavicIconsEnumMember = { fg = colors.orange },
    NavicIconsStruct = { fg = colors.yellow },
    NavicIconsEvent = { fg = colors.purple },
    NavicIconsOperator = { fg = colors.aqua },
    NavicIconsTypeParameter = { fg = colors.yellow },
    NavicText = { fg = colors.fg },
    NavicSeparator = { fg = colors.comment },

    -- =============================================================
    -- Aerial
    -- =============================================================
    AerialNormal = { fg = colors.fg, bg = colors.bg_sidebar },
    AerialLine = { bg = colors.bg_selection },
    AerialGuide = { fg = colors.fg_gutter },

    -- =============================================================
    -- Scrollbar
    -- =============================================================
    ScrollbarHandle = { bg = colors.bg_highlight },
    ScrollbarSearchHandle = { fg = colors.orange, bg = colors.bg_highlight },
    ScrollbarSearch = { fg = colors.orange },
    ScrollbarErrorHandle = { fg = colors.error, bg = colors.bg_highlight },
    ScrollbarError = { fg = colors.error },
    ScrollbarWarnHandle = { fg = colors.warning, bg = colors.bg_highlight },
    ScrollbarWarn = { fg = colors.warning },
    ScrollbarInfoHandle = { fg = colors.info, bg = colors.bg_highlight },
    ScrollbarInfo = { fg = colors.info },
    ScrollbarHintHandle = { fg = colors.hint, bg = colors.bg_highlight },
    ScrollbarHint = { fg = colors.hint },
    ScrollbarMiscHandle = { fg = colors.purple, bg = colors.bg_highlight },
    ScrollbarMisc = { fg = colors.purple },

    -- =============================================================
    -- Yanky
    -- =============================================================
    YankyPut = { bg = colors.bg_highlight },
    YankyYanked = { bg = colors.bg_highlight },

    -- =============================================================
    -- Diff (additional)
    -- =============================================================
    diffAdded = { fg = colors.git_add },
    diffRemoved = { fg = colors.git_delete },
    diffChanged = { fg = colors.git_change },
    diffOldFile = { fg = colors.yellow },
    diffNewFile = { fg = colors.orange },
    diffFile = { fg = colors.blue },
    diffLine = { fg = colors.comment },
    diffIndexLine = { fg = colors.purple },

    -- =============================================================
    -- Neogit
    -- =============================================================
    NeogitBranch = { fg = colors.purple },
    NeogitRemote = { fg = colors.purple },
    NeogitHunkHeader = { fg = colors.fg, bg = colors.bg_highlight },
    NeogitHunkHeaderHighlight = { fg = colors.blue, bg = colors.bg_highlight },
    NeogitDiffContextHighlight = { bg = colors.bg_dark },
    NeogitDiffDeleteHighlight = { fg = colors.git_delete, bg = colors.diff_delete },
    NeogitDiffAddHighlight = { fg = colors.git_add, bg = colors.diff_add },

    -- =============================================================
    -- Headlines (for markdown)
    -- =============================================================
    Headline = { bg = colors.bg_highlight },
    Headline1 = { fg = colors.blue, bg = colors.bg_highlight, bold = true },
    Headline2 = { fg = colors.purple, bg = colors.bg_highlight, bold = true },
    Headline3 = { fg = colors.green, bg = colors.bg_highlight, bold = true },
    Headline4 = { fg = colors.orange, bg = colors.bg_highlight, bold = true },
    Headline5 = { fg = colors.aqua, bg = colors.bg_highlight, bold = true },
    Headline6 = { fg = colors.yellow, bg = colors.bg_highlight, bold = true },
    CodeBlock = { bg = colors.bg_dark },
    Dash = { fg = colors.orange, bold = true },
    Quote = { fg = colors.comment, italic = true },

    -- =============================================================
    -- Markdown
    -- =============================================================
    markdownH1 = { fg = colors.blue, bold = true },
    markdownH2 = { fg = colors.purple, bold = true },
    markdownH3 = { fg = colors.green, bold = true },
    markdownH4 = { fg = colors.orange, bold = true },
    markdownH5 = { fg = colors.aqua, bold = true },
    markdownH6 = { fg = colors.yellow, bold = true },
    markdownCode = { fg = colors.green },
    markdownCodeBlock = { fg = colors.green },
    markdownHeadingDelimiter = { fg = colors.orange },
    markdownLinkText = { fg = colors.blue, underline = true },
    markdownUrl = { fg = colors.aqua, underline = true },
    markdownBold = { bold = true },
    markdownItalic = { italic = true },

    -- =============================================================
    -- HTML
    -- =============================================================
    htmlTag = { fg = colors.fg },
    htmlEndTag = { fg = colors.fg },
    htmlTagName = { fg = colors.red },
    htmlArg = { fg = colors.orange },
    htmlSpecialChar = { fg = colors.orange },

    -- =============================================================
    -- CSS
    -- =============================================================
    cssClassName = { fg = colors.yellow },
    cssClassNameDot = { fg = colors.yellow },
    cssColor = { fg = colors.orange },
    cssIdentifier = { fg = colors.yellow },
    cssProp = { fg = colors.aqua },
    cssTagName = { fg = colors.red },

    -- =============================================================
    -- JavaScript/TypeScript
    -- =============================================================
    javaScriptFunction = { fg = colors.purple },
    javaScriptIdentifier = { fg = colors.red },
    javaScriptNull = { fg = colors.orange },
    javaScriptNumber = { fg = colors.orange },
    javaScriptRequire = { fg = colors.aqua },
    javaScriptReserved = { fg = colors.purple },

    typescriptTSFunction = { fg = colors.blue },
    typescriptTSMethod = { fg = colors.blue },
    typescriptTSKeyword = { fg = colors.purple },
    typescriptTSType = { fg = colors.yellow },

    -- =============================================================
    -- Harpoon
    -- =============================================================
    HarpoonWindow = { fg = colors.fg, bg = colors.bg_float },
    HarpoonBorder = { fg = colors.border },

    -- =============================================================
    -- Snacks.nvim
    -- =============================================================
    SnacksNormal = { fg = colors.fg, bg = colors.bg_float },
    SnacksBorder = { fg = colors.border },
    SnacksBackdrop = { bg = colors.bg_dark },
    SnacksIndent = { fg = colors.bg_highlight },
    SnacksIndentScope = { fg = colors.purple },
  }

  return highlights
end

return M
