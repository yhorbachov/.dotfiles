vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({})

local wk = require 'which-key'
wk.register {
    ['<leader>e'] = { ':NvimTreeFocus<cr>', 'Files explorer'},
    ['<C-b>'] = { ':NvimTreeToggle<cr>' , ''},
}
