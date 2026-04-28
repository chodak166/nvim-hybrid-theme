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

    -- Entity/type names (light placeholders, tune as needed)
    colorscheme.syntaxClass = '#6871ff'
    colorscheme.syntaxType = '#f0ac80'
    colorscheme.syntaxTypeBuiltin = '#b2ccd6'
    colorscheme.syntaxVariable = '#616161'
    colorscheme.syntaxParameter = '#333333'
    colorscheme.syntaxProperty = '#1976d2'
    colorscheme.syntaxTag = '#dd8500'
    colorscheme.syntaxAttribute = '#1976d2'
    colorscheme.syntaxNamespace = '#6871ff'
    colorscheme.syntaxConstant = '#dd8500'
    colorscheme.syntaxEscape = '#800080'
  else
    local bg_variant = config.background_variants[config.background_variant]
      or config.background_variants.base
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
    colorscheme.syntaxFunction = '#f0c674' -- entity.name.function → yellow
    colorscheme.warningText = '#cd9731'
    colorscheme.syntaxKeyword = '#81a2be' -- keyword.control, storage.type → blue
    colorscheme.linkText = '#b5bd68'
    colorscheme.stringText = '#b5bd68' -- string → green
    colorscheme.warningEmphasis = '#f0c674'
    colorscheme.successText = '#b5bd68'
    colorscheme.errorText = '#ff5370'
    colorscheme.specialKeyword = '#b294bb' -- keyword.other.special-method → purple
    colorscheme.commentText = '#6c7a80' -- comment → muted teal-grey
    colorscheme.syntaxOperator = '#de935f' -- meta.tag, punctuation.definition.tag → orange

    -- entity.name (class names, support.class) → yellow, same as function definitions
    colorscheme.syntaxClass = '#f0c674'
    -- entity.name.type specifically → warm orange, distinct from class/function
    colorscheme.syntaxType = '#f0ac80'
    -- support.type (built-in types like string, number, etc.) → light blue-grey
    colorscheme.syntaxTypeBuiltin = '#b2ccd6'
    -- variable, meta.definition.variable.name → near-white
    colorscheme.syntaxVariable = '#e4e4e4'
    -- variable.parameter (function arguments) → matches commandText
    colorscheme.syntaxParameter = '#c5c8c6'
    -- meta.object-literal.key, JSON keys, attributes → blue
    colorscheme.syntaxProperty = '#81a2be'
    -- entity.name.tag (HTML/JSX tags) → orange
    colorscheme.syntaxTag = '#de935f'
    -- entity.other.attribute-name → blue
    colorscheme.syntaxAttribute = '#81a2be'
    -- namespaces/modules → red (sub-methods)
    colorscheme.syntaxNamespace = '#ff5370'
    -- constant.numeric → muted red; constant.language → yellow
    colorscheme.syntaxConstant = '#cc6666'
    colorscheme.syntaxLanguageConstant = '#f0c674'
    -- constant.character.escape → purple
    colorscheme.syntaxEscape = '#b294bb'

    colorscheme.foregroundEmphasis = '#ffffff'
    colorscheme.terminalGray = '#5c5c5c'
  end
end

refresh()

return setmetatable(colorscheme, { __call = refresh })
