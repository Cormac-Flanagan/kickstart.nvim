-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    keys = {
      { '<leader>ft', '<cmd>Neotree toggle<cr>', desc = 'NeoTree' },
    },

    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
    },
  },
  -- {
  --   'jiaoshijie/undotree',
  --   dependencies = 'nvim-lua/plenary.nvim',
  --   config = function()
  --     local undotree = require 'undotree'
  --
  --     undotree.setup {
  --       float_diff = true,
  --       layout = 'right_bottom',
  --       ingnore_filetype = { 'Undotree', 'UndotreeDiff', 'qf', 'TelescopePrompt', 'spectre_panel', 'tsplayground' },
  --       window = {
  --         winblend = 30,
  --       },
  --     }
  --     vim.keymap.set('n', '<leader>u', undotree.toggle, { noremap = true, silent = true, desc = 'Undotree' })
  --   end,
  -- },
  {
    'HiPhish/rainbow-delimiters.nvim',
  },
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Undotree' })
    end,
  },
  {
    -- 'zbirenbaum/copilot.lua',
    -- cmd = 'Copilot',
    -- -- event = 'InsertEnter',
    -- config = function()
    --   -- code
    --   require('copilot').setup {
    --     suggestion = { enabled = false },
    --     panel = { enabled = false },
    --   }
    --   vim.keymap.set('n', '<leader>ci', '<cmd> Copilot toggle <cr>', { desc = 'toggle github copilot' })
    -- end,
  },
  {
    -- 'zbirenbaum/copilot-cmp',
    -- config = function()
    --   require('copilot_cmp').setup()
    -- end,
    --   dependencies = {
    --   'zbirenbaum/copilot.lua',
    -- },
  },
  -- {
  --   'linux-cultist/venv-selector.nvim',
  --   dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
  --   opts = {
  --     -- Your options go here
  --     -- name = "venv",
  --     -- auto_refresh = false
  --   },
  --   event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  --   keys = {
  --     -- Keymap to open VenvSelector to pick a venv.
  --     { '<leader>vs', '<cmd>VenvSelect<cr>' },
  --     -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
  --     { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
  --   },
  -- },
}
