-- https://github.com/eldritch-theme/eldritch.nvim
--
-- Filename: ~/github/dotfiles-latest/neovim/neobean/lua/plugins/colorschemes/eldritch.lua
-- ~/github/dotfiles-latest/neovim/neobean/lua/plugins/colorschemes/eldritch.lua

local colors = require("config.colors").load_colors()

return {
  "eldritch-theme/eldritch.nvim",
  lazy = true,
  name = "eldritch",
  opts = {
    -- Overriding colors globally using a definitions table
    on_colors = function(global_colors)
      -- Define all color overrides in a single table
      local color_definitions = {
        -- https://github.com/eldritch-theme/eldritch.nvim/blob/master/lua/eldritch/colors.lua
        bg = colors["linkarzu_color10"],
        fg = colors["linkarzu_color14"],
        selection = colors["linkarzu_color16"],
        comment = colors["linkarzu_color09"],
        red = colors["linkarzu_color08"], -- default #f16c75
        orange = colors["linkarzu_color06"], -- default #f7c67f
        yellow = colors["linkarzu_color05"], -- default #f1fc79
        green = colors["linkarzu_color02"],
        purple = colors["linkarzu_color04"], -- default #a48cf2
        cyan = colors["linkarzu_color03"],
        pink = colors["linkarzu_color01"], -- default #f265b5
        bright_red = colors["linkarzu_color08"],
        bright_green = colors["linkarzu_color02"],
        bright_yellow = colors["linkarzu_color05"],
        bright_blue = colors["linkarzu_color04"],
        bright_magenta = colors["linkarzu_color01"],
        bright_cyan = colors["linkarzu_color03"],
        bright_white = colors["linkarzu_color14"],
        menu = colors["linkarzu_color10"],
        visual = colors["linkarzu_color16"],
        gutter_fg = colors["linkarzu_color16"],
        nontext = colors["linkarzu_color16"],
        white = colors["linkarzu_color14"],
        black = colors["linkarzu_color10"],
        git = {
          change = colors["linkarzu_color03"],
          add = colors["linkarzu_color02"],
          delete = colors["linkarzu_color11"],
        },
        gitSigns = {
          change = colors["linkarzu_color03"],
          add = colors["linkarzu_color02"],
          delete = colors["linkarzu_color11"],
        },
        bg_dark = colors["linkarzu_color13"],
        -- Lualine line across
        bg_highlight = colors["linkarzu_color17"],
        terminal_black = colors["linkarzu_color13"],
        fg_dark = colors["linkarzu_color14"],
        fg_gutter = colors["linkarzu_color13"],
        dark3 = colors["linkarzu_color13"],
        dark5 = colors["linkarzu_color13"],
        bg_visual = colors["linkarzu_color16"],
        dark_cyan = colors["linkarzu_color03"],
        magenta = colors["linkarzu_color01"],
        magenta2 = colors["linkarzu_color01"],
        magenta3 = colors["linkarzu_color01"],
        dark_yellow = colors["linkarzu_color05"],
        dark_green = colors["linkarzu_color02"],
      }

      -- Apply each color definition to global_colors
      for key, value in pairs(color_definitions) do
        global_colors[key] = value
      end
    end,

    -- This function is found in the documentation
    on_highlights = function(highlights)
      local highlight_definitions = {
        -- nvim-spectre highlight colors
        DiffChange = { bg = colors["linkarzu_color02"], fg = "black" },
        DiffDelete = { bg = colors["linkarzu_color01"], fg = "black" },
        TelescopeResultsDiffDelete = { bg = colors["linkarzu_color01"], fg = "black" },

        -- horizontal line that goes across where cursor is
        CursorLine = { bg = colors["linkarzu_color13"] },

        -- I do the line below to change the color of bold text
        ["@markup.strong"] = { fg = colors["linkarzu_color04"], bold = true },

        -- Inline code in markdown
        ["@markup.raw.markdown_inline"] = { fg = colors["linkarzu_color02"] },

        -- Change the spell underline color
        SpellBad = { sp = colors["linkarzu_color11"], undercurl = true, bold = true, italic = true },
        SpellCap = { sp = colors["linkarzu_color12"], undercurl = true, bold = true, italic = true },
        SpellLocal = { sp = colors["linkarzu_color12"], undercurl = true, bold = true, italic = true },
        SpellRare = { sp = colors["linkarzu_color04"], undercurl = true, bold = true, italic = true },

        MiniDiffSignAdd = { fg = colors["linkarzu_color05"], bold = true },
        MiniDiffSignChange = { fg = colors["linkarzu_color02"], bold = true },

        -- Codeblocks for the render-markdown plugin
        RenderMarkdownCode = { bg = colors["linkarzu_color07"] },

        -- This is the plugin that shows you where you are at the top
        TreesitterContext = { sp = colors["linkarzu_color10"] },
        MiniFilesNormal = { sp = colors["linkarzu_color10"] },
        MiniFilesBorder = { sp = colors["linkarzu_color10"] },
        MiniFilesTitle = { sp = colors["linkarzu_color10"] },
        MiniFilesTitleFocused = { sp = colors["linkarzu_color10"] },

        NormalFloat = { bg = colors["linkarzu_color10"] },
        FloatBorder = { bg = colors["linkarzu_color10"] },
        FloatTitle = { bg = colors["linkarzu_color10"] },
        NotifyBackground = { bg = colors["linkarzu_color10"] },
        NeoTreeNormalNC = { bg = colors["linkarzu_color10"] },
        NeoTreeNormal = { bg = colors["linkarzu_color10"] },
        NvimTreeWinSeparator = { fg = colors["linkarzu_color10"], bg = colors["linkarzu_color10"] },
        NvimTreeNormalNC = { bg = colors["linkarzu_color10"] },
        NvimTreeNormal = { bg = colors["linkarzu_color10"] },
        TroubleNormal = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupBorder = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupTitle = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupBorderFilter = { bg = colors["linkarzu_color10"] },
        NoiceCmdlineIconFilter = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupTitleFilter = { bg = colors["linkarzu_color10"] },
        NoiceCmdlineIcon = { bg = colors["linkarzu_color10"] },
        NoiceCmdlineIconCmdline = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupBorderCmdline = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupTitleCmdline = { bg = colors["linkarzu_color10"] },
        NoiceCmdlineIconSearch = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupBorderSearch = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupTitleSearch = { bg = colors["linkarzu_color10"] },
        NoiceCmdlineIconLua = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupBorderLua = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupTitleLua = { bg = colors["linkarzu_color10"] },
        NoiceCmdlineIconHelp = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupBorderHelp = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupTitleHelp = { bg = colors["linkarzu_color10"] },
        NoiceCmdlineIconInput = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupBorderInput = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupTitleInput = { bg = colors["linkarzu_color10"] },
        NoiceCmdlineIconCalculator = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupBorderCalculator = { bg = colors["linkarzu_color10"] },
        NoiceCmdlinePopupTitleCalculator = { bg = colors["linkarzu_color10"] },
        NoiceCompletionItemKindDefault = { bg = colors["linkarzu_color10"] },
        NoiceMini = { bg = colors["linkarzu_color10"] },
        StatusLine = { bg = colors["linkarzu_color10"] },
        Folded = { bg = colors["linkarzu_color10"] },

        DiagnosticInfo = { fg = colors["linkarzu_color03"] },
        DiagnosticHint = { fg = colors["linkarzu_color02"] },
        DiagnosticWarn = { fg = colors["linkarzu_color08"] },
        DiagnosticOk = { fg = colors["linkarzu_color04"] },
        DiagnosticError = { fg = colors["linkarzu_color05"] },
        RenderMarkdownQuote = { fg = colors["linkarzu_color12"] },

        -- visual mode selection
        Visual = { bg = colors["linkarzu_color16"], fg = colors["linkarzu_color10"] },
        PreProc = { fg = colors["linkarzu_color06"] },
        ["@operator"] = { fg = colors["linkarzu_color02"] },

        KubectlHeader = { fg = colors["linkarzu_color04"] },
        KubectlWarning = { fg = colors["linkarzu_color03"] },
        KubectlError = { fg = colors["linkarzu_color01"] },
        KubectlInfo = { fg = colors["linkarzu_color02"] },
        KubectlDebug = { fg = colors["linkarzu_color05"] },
        KubectlSuccess = { fg = colors["linkarzu_color02"] },
        KubectlPending = { fg = colors["linkarzu_color03"] },
        KubectlDeprecated = { fg = colors["linkarzu_color08"] },
        KubectlExperimental = { fg = colors["linkarzu_color09"] },
        KubectlNote = { fg = colors["linkarzu_color03"] },
        KubectlGray = { fg = colors["linkarzu_color10"] },
      }

      -- Apply all highlight definitions at once
      for group, props in pairs(highlight_definitions) do
        highlights[group] = props
      end
    end,
  },
}
