local M = {}
local colorscheme = require 'hybrid-theme.colorscheme'

function M.highlights()
  colorscheme()
  return {
    BlinkCmpGhostText = { fg = colorscheme.commentText },
    BlinkCmpDoc = { link = 'NormalFloat' },
    BlinkCmpDocBorder = { link = 'FloatBorder' },
    BlinkCmpSignatureHelp = { link = 'NormalFloat' },
    BlinkCmpSignatureHelpBorder = { link = 'FloatBorder' },
    BlinkCmpMenu = { link = 'Pmenu' },
    BlinkCmpMenuBorder = { link = 'FloatBorder' },
    BlinkCmpLabel = { fg = colorscheme.mainText },
    BlinkCmpLabelDeprecated = { fg = colorscheme.disabledText, strikethrough = true },
    BlinkCmpLabelMatch = { fg = colorscheme.syntaxFunction, bold = true },
    BlinkCmpKind = { fg = colorscheme.syntaxFunction },
    BlinkCmpKindCodeium = { fg = colorscheme.syntaxFunction },
    BlinkCmpKindCopilot = { fg = colorscheme.syntaxFunction },
    BlinkCmpKindTabNine = { fg = colorscheme.syntaxFunction },
  }
end

return M

