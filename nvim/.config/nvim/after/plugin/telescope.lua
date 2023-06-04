local telescope = require 'telescope'
local builtin = require('telescope.builtin')

telescope.setup {}

telescope.load_extension('fzf')


local wk = require('which-key')

wk.register({
    f = {
        f = { '<cmd>Telescope find_files<CR>', 'Find file' },
        s = { '<cmd>Telescope live_grep<cr>', "Serach text" },
        c = { '<cmd>Telescope grep_string<cr>', 'Grep string' },
        b = { '<cmd>Telescope buffers<cr>', 'Buffers' },
    },

}, { prefix = '<leader>' })
