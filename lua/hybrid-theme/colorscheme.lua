local config = require 'hybrid-theme.config'

local colorscheme = {
  standardWhite = '#ffffff',
  standardBlack = '#1e1e1e',
}

local function refresh()
  if vim.o.background == 'light' then
    colorscheme.editorBackground = config.transparent and 'none' or '#ffffff'
    colorscheme.sidebarBackground = '#dddddd'
    colorscheme.popupBackground = '#f6f6f6'
    colorscheme.floatingWindowBackground = '#e0e0e0'
    colorscheme.menuOptionBackground = '#ededed'

    colorscheme.mainText = '#616161'
    colorscheme.emphasisText = '#212121'
    colorscheme.commandText = '#333333'
    colorscheme.inactiveText = '#9e9e9e'
    colorscheme.disabledText = '#d0d0d0'
    colorscheme.lineNumberText = '#a1a1a1'
    colorscheme.selectedText = '#424242'
    colorscheme.inactiveSelectionText = '#757575'

    colorscheme.windowBorder = '#c2c3c5'
    colorscheme.focusedBorder = '#aaaaaa'
    colorscheme.emphasizedBorder = '#999999'

    colorscheme.syntaxFunction = '#6871ff'
    colorscheme.syntaxError = '#d6656a'
    colorscheme.syntaxKeyword = '#9966cc'
    colorscheme.errorText = '#d32f2f'
    colorscheme.warningText = '#f29718'
    colorscheme.linkText = '#1976d2'
    colorscheme.commentText = '#848484'
    colorscheme.stringText = '#dd8500'
    colorscheme.successText = '#22863a'
    colorscheme.warningEmphasis = '#cd9731'
    colorscheme.specialKeyword = '#800080'
    colorscheme.syntaxOperator = '#a1a1a1'
    colorscheme.foregroundEmphasis = '#000000'
    colorscheme.terminalGray = '#333333'
  else
    local bg_variant = config.background_variants[config.background_variant] or config.background_variants.base
    colorscheme.editorBackground = config.transparent and 'none' or bg_variant
    colorscheme.sidebarBackground = '#1d2428'
    colorscheme.popupBackground = '#2a2e32'
    colorscheme.floatingWindowBackground = '#383b40'
    colorscheme.menuOptionBackground = '#4796c2'

    colorscheme.mainText = '#d4d4d4'
    colorscheme.emphasisText = '#e4e4e4'
    colorscheme.commandText = '#c5c8c6'
    colorscheme.inactiveText = '#707070'
    colorscheme.disabledText = '#6c7a80'
    colorscheme.lineNumberText = '#707070'
    colorscheme.selectedText = '#99dbff'
    colorscheme.inactiveSelectionText = '#99dbff'

    colorscheme.windowBorder = '#404040'
    colorscheme.focusedBorder = '#8abeb7'
    colorscheme.emphasizedBorder = '#81a2be'

    colorscheme.syntaxError = '#ff5370'
    colorscheme.syntaxFunction = '#f0c674'
    colorscheme.warningText = '#cd9731'
    colorscheme.syntaxKeyword = '#81a2be'
    colorscheme.linkText = '#b5bd68'
    colorscheme.stringText = '#b5bd68'
    colorscheme.warningEmphasis = '#f0c674'
    colorscheme.successText = '#b5bd68'
    colorscheme.errorText = '#ff5370'
    colorscheme.specialKeyword = '#b294bb'
    colorscheme.commentText = '#6c7a80'
    colorscheme.syntaxOperator = '#de935f'
    colorscheme.foregroundEmphasis = '#ffffff'
    colorscheme.terminalGray = '#5c5c5c'
  end
end

refresh()

return setmetatable(colorscheme, { __call = refresh })
