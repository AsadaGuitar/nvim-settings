vim.api.nvim_set_var('loaded_netrw', 1)
vim.api.nvim_set_var('loaded_netrwPlugin', 1)

require('options')
require('plugins')

require('nvim-tree').setup {
  sort_by = 'extension',

  view = {
    width = '20%',
    side = 'left',
    signcolumn = 'no',
  },

  renderer = {
    highlight_git = true,
    highlight_opened_files = 'name',
    icons = {
      glyphs = {
        git = {
          unstaged = '!', renamed = '»', untracked = '?', deleted = '✘',
          staged = '✓', unmerged = '', ignored = '◌',
        },
      },
    },
  },

  actions = {
    expand_all = {
      max_folder_discovery = 100,
      exclude = { '.git', 'target', 'build' },
    },
  },

  on_attach = 'default'
}

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "plugins.lua" },
  command = "PackerCompile",
})


vim.cmd[[colorscheme iceberg]]
vim.api.nvim_create_user_command('Ex', function() vim.cmd.NvimTreeOpen() end, {})

require'bufferline'.setup {
-- 好みの設定をここに書く
}
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<C-h>', '<Cmd>BufferPrevious<CR>', opts)--Ctrl+jで前のBufferに移動
map('n', '<C-l>', '<Cmd>BufferNext<CR>', opts)--Ctrl+kで次のBufferに移動
-- Close buffer
map('n', '<C-w>', '<Cmd>BufferClose<CR>', opts) --<leader>+eでBufferを削除
map('n', '<C-n>', '<Cmd>Ex<CR>', opts) --<leader>+eでBufferを削除
