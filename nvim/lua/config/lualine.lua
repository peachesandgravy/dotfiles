-- Setup lualine
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
--    component_separators = { left = '', right = ''},
--    section_separators = { left = '', right = ''},
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
      refresh_time = 16, -- ~60fps
      events = {
        'WinEnter',
        'BufEnter',
        'BufWritePost',
        'SessionLoadPost',
        'FileChangedShellPost',
        'VimResized',
        'Filetype',
        'CursorMoved',
        'CursorMovedI',
        'ModeChanged',
      },
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
--    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

-- transparent_bg = opts.transparent_background and "NONE" or C.mantle
lualine = {
    normal = {
        a = { bg = C.blue, fg = C.mantle, gui = "bold" },
        b = { bg = C.surface0, fg = C.blue },
        c = { bg = transparent_bg, fg = C.text },
    },

    insert = {
        a = { bg = C.green, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.green },
    },

    terminal = {
        a = { bg = C.green, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.green },
    },

    command = {
        a = { bg = C.peach, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.peach },
    },
    visual = {
        a = { bg = C.mauve, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.mauve },
[118;1:3u    },
    replace = {
        a = { bg = C.red, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.red },
    },
    inactive = {
        a = { bg = transparent_bg, fg = C.blue },
        b = { bg = transparent_bg, fg = C.surface1, gui = "bold" },
        c = { bg = transparent_bg, fg = C.overlay0 },
    },
},
