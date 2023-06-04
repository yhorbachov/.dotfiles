local wk = require('which-key')
wk.register()

wk.register({
	w = { ":w<CR>", "Save" },
	q = { ":q<CR>", "Quit" },
    h = { ":nohl<CR>", "Clear highlight" },

    -- split window
    s = {
        name = "Split",
        v = { "<C-w>v", "Split vertical" },
        h = { "<C-w>s", "Split horizontal" },
        e = { "<C-w>=", "Equal width" },
    },
}, { prefix = "<leader>" })
