return {

  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate'
  },

  { 
    'nvim-mini/mini.icons',
  },

  { 
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-mini/mini.icons' },
    ---@module "fzf-lua"
    ---@type fzf-lua.Config|{}
    ---@diagnostic disable: missing-fields
    opts = {}
    ---@diagnostic enable: missing-fields
  },

  { 
    'catppuccin/nvim', 
    name = 'catppuccin', 
    priority = 1000, 
  },

  { 
    'windwp/nvim-autopairs', 
    event = "InsertEnter", 
    config = true,
  },

  {
    'ibhagwan/fzf-lua',
    requires = { 'nvim-mini/mini.icons' }
  },

  {
    'neovim/nvim-lspconfig'
  },

  {
    'lervag/vimtex',
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "skim"
    end
  },

}
