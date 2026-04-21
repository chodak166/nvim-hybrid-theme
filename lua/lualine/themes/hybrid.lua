local colorscheme = require 'hybrid-theme.colorscheme'
local config = require 'hybrid-theme.config'
local theme = {}

local bg = config.transparent and 'NONE' or colorscheme.editorBackground

theme.normal = {
  a = { bg = colorscheme.syntaxKeyword, fg = colorscheme.editorBackground, gui = 'bold' },
  b = { bg = bg, fg = colorscheme.commentText },
  c = { bg = bg, fg = colorscheme.mainText },
}

theme.insert = {
  a = {
    bg = colorscheme.stringText,
    fg = colorscheme.editorBackground,
    gui = 'bold',
  },
  b = { bg = bg, fg = colorscheme.commentText },
}

theme.terminal = {
  a = {
    bg = colorscheme.stringText,
    fg = colorscheme.editorBackground,
    gui = 'bold',
  },
  b = { bg = bg, fg = colorscheme.commentText },
}

theme.command = {
  a = {
    bg = colorscheme.stringText,
    fg = colorscheme.editorBackground,
    gui = 'bold',
  },
  b = { bg = bg, fg = colorscheme.commentText },
}

theme.visual = {
  a = {
    bg = colorscheme.syntaxOperator,
    fg = colorscheme.editorBackground,
    gui = 'bold',
  },
  b = { bg = bg, fg = colorscheme.commentText },
}

theme.replace = {
  a = {
    bg = colorscheme.warningEmphasis,
    fg = colorscheme.editorBackground,
    gui = 'bold',
  },
  b = { bg = bg, fg = colorscheme.commentText },
}

theme.inactive = {
  a = { bg = colorscheme.commentText, fg = colorscheme.editorBackground },
  b = { bg = bg, fg = colorscheme.inactiveText, gui = 'bold' },
  c = { bg = bg, fg = colorscheme.inactiveText },
}

return theme
