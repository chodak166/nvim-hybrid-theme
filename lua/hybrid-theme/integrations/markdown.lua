local utils = require 'hybrid-theme.utils'
local colorscheme = require 'hybrid-theme.colorscheme'

local M = {}

function M.highlights()
  colorscheme()

  -- Neutral elevation for code blocks: mix floatingWindowBackground into the
  -- editor background so the block reads as a clearly distinct surface without
  -- any coloured tint.
  local code_bg = utils.mix(
    colorscheme.floatingWindowBackground,
    colorscheme.editorBackground,
    0.6
  )
  local inline_code_bg = utils.mix(
    colorscheme.commentText,
    colorscheme.editorBackground,
    0.18
  )

  -- Muted heading colours derived from the existing palette, kept calm by
  -- relying on text colour + bold rather than coloured backgrounds.
  local heading_colors = {
    colorscheme.syntaxFunction, -- H1: warm yellow
    colorscheme.syntaxType,     -- H2: soft yellow
    colorscheme.syntaxKeyword,   -- H3: blue
    colorscheme.syntaxProperty,  -- H4: blue
    colorscheme.specialKeyword,  -- H5: purple
    colorscheme.syntaxOperator, -- H6: orange
  }

  local groups = {
    -- Tree-sitter markdown captures ---------------------------------------
    -- Code blocks: quiet elevation, no green.
    ['@markup.raw.block.markdown'] = {
      bg = code_bg,
      fg = colorscheme.commandText,
    },
    ['@markup.raw.block.delimiter.markdown'] = {
      fg = colorscheme.commentText,
      bg = code_bg,
    },
    -- Inline code: a faint, neutral chip rather than a bright swatch.
    ['@markup.raw.markdown'] = {
      bg = inline_code_bg,
      fg = colorscheme.commandText,
    },
    ['@markup.raw.delimiter.markdown'] = { fg = colorscheme.commentText },

    -- Headings: colour through text only, no coloured backgrounds.
    ['@markup.heading.1.markdown'] = { fg = heading_colors[1], bold = true },
    ['@markup.heading.2.markdown'] = { fg = heading_colors[2], bold = true },
    ['@markup.heading.3.markdown'] = { fg = heading_colors[3], bold = true },
    ['@markup.heading.4.markdown'] = { fg = heading_colors[4], bold = true },
    ['@markup.heading.5.markdown'] = { fg = heading_colors[5], bold = true },
    ['@markup.heading.6.markdown'] = { fg = heading_colors[6], bold = true },
    ['@markup.heading.1.marker.markdown'] = { fg = colorscheme.commentText },
    ['@markup.heading.2.marker.markdown'] = { fg = colorscheme.commentText },
    ['@markup.heading.3.marker.markdown'] = { fg = colorscheme.commentText },
    ['@markup.heading.4.marker.markdown'] = { fg = colorscheme.commentText },
    ['@markup.heading.5.marker.markdown'] = { fg = colorscheme.commentText },
    ['@markup.heading.6.marker.markdown'] = { fg = colorscheme.commentText },

    -- Emphasis: keep it typographic, not chromatic.
    ['@markup.italic.markdown'] = { italic = true },
    ['@markup.bold.markdown'] = { bold = true },
    ['@markup.strikethrough.markdown'] = { strikethrough = true },

    -- Links: understated blue + underline, no background.
    ['@markup.link.markdown'] = { fg = colorscheme.linkText, underline = true },
    ['@markup.link.label.markdown'] = { fg = colorscheme.linkText },
    ['@markup.link.url.markdown'] = {
      fg = colorscheme.linkText,
      underline = true,
    },
    ['@markup.link.url.html'] = {
      fg = colorscheme.linkText,
      underline = true,
    },

    -- Lists / checkboxes / quotes: muted.
    ['@markup.list.markdown'] = { fg = colorscheme.commentText },
    ['@markup.list.checked.markdown'] = { fg = colorscheme.successText },
    ['@markup.list.unchecked.markdown'] = { fg = colorscheme.disabledText },
    ['@markup.quote.markdown'] = {
      fg = colorscheme.commentText,
      italic = true,
    },

    -- Misc markdown punctuation.
    ['@punctuation.special.markdown'] = { fg = colorscheme.commentText },
    ['@punctuation.definition.markdown'] = { fg = colorscheme.commentText },

    -- Tables: muted delimiters so the data reads, not the pipes.
    ['@punctuation.special.table.markdown'] = { fg = colorscheme.disabledText },

    -- Legacy vim syntax groups (used when treesitter markdown is absent) ---
    markdownCode = { bg = code_bg, fg = colorscheme.commandText },
    markdownCodeBlock = { bg = code_bg, fg = colorscheme.commandText },
    markdownCodeDelimiter = { fg = colorscheme.commentText, bg = code_bg },
    markdownH1 = { fg = heading_colors[1], bold = true },
    markdownH2 = { fg = heading_colors[2], bold = true },
    markdownH3 = { fg = heading_colors[3], bold = true },
    markdownH4 = { fg = heading_colors[4], bold = true },
    markdownH5 = { fg = heading_colors[5], bold = true },
    markdownH6 = { fg = heading_colors[6], bold = true },
    markdownHeadingDelimiter = { fg = colorscheme.commentText },
    markdownRule = { fg = colorscheme.commentText },
    markdownBold = { bold = true },
    markdownItalic = { italic = true },
    markdownBoldItalic = { bold = true, italic = true },
    markdownLinkText = { fg = colorscheme.linkText },
    markdownUrl = { fg = colorscheme.linkText, underline = true },
    markdownLinkTextDelimited = { fg = colorscheme.linkText },
    markdownListMarker = { fg = colorscheme.commentText },
    markdownBlockquote = { fg = colorscheme.commentText, italic = true },
    markdownEscape = { fg = colorscheme.specialKeyword },

    -- render-markdown.nvim -------------------------------------------------
    -- Code: keep the surface neutral so syntax inside stays readable.
    RenderMarkdownCode = { bg = code_bg },
    RenderMarkdownCodeInline = { bg = inline_code_bg },

    -- Headings: deliberately no background; let the text colour carry it.
    RenderMarkdownH1 = { fg = heading_colors[1], bold = true },
    RenderMarkdownH2 = { fg = heading_colors[2], bold = true },
    RenderMarkdownH3 = { fg = heading_colors[3], bold = true },
    RenderMarkdownH4 = { fg = heading_colors[4], bold = true },
    RenderMarkdownH5 = { fg = heading_colors[5], bold = true },
    RenderMarkdownH6 = { fg = heading_colors[6], bold = true },
    RenderMarkdownH1Bg = { bg = 'NONE' },
    RenderMarkdownH2Bg = { bg = 'NONE' },
    RenderMarkdownH3Bg = { bg = 'NONE' },
    RenderMarkdownH4Bg = { bg = 'NONE' },
    RenderMarkdownH5Bg = { bg = 'NONE' },
    RenderMarkdownH6Bg = { bg = 'NONE' },

    -- Bullets / quotes / links: quiet.
    RenderMarkdownBullet = { fg = colorscheme.commentText },
    RenderMarkdownQuote = { fg = colorscheme.commentText, italic = true },
    RenderMarkdownLink = { fg = colorscheme.linkText, underline = true },
    RenderMarkdownSign = { fg = colorscheme.commentText },

    -- Checkboxes: a single accent (green) for done, muted for pending.
    RenderMarkdownSuccess = { fg = colorscheme.successText },
    RenderMarkdownWarn = { fg = colorscheme.warningEmphasis },
    RenderMarkdownError = { fg = colorscheme.errorText },
    RenderMarkdownInfo = { fg = colorscheme.syntaxFunction },

    -- Table borders: subtle.
    RenderMarkdownTableHead = { fg = colorscheme.commentText },
    RenderMarkdownTableRow = { fg = colorscheme.disabledText },
    RenderMarkdownTableFill = { fg = colorscheme.disabledText },

    -- HTML-style inline code rendered by the plugin.
    RenderMath = { bg = code_bg },
  }

  return groups
end

return M
