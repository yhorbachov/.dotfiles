-- local lsp = require("lsp-zero").preset({
-- 	name = "minimal",
-- 	set_lsp_keymaps = true,
-- 	manage_nvim_cmp = true,
-- 	suggest_lsp_servers = false,
-- })
-- local wk = require("which-key")

-- lsp.on_attach(function(client, bufnr)
-- 	wk.register({
-- 		["K"] = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Symbol info" },
-- 		["gd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Goto definition" },
-- 		["gD"] = { "<CMD>lua vim.lsp.buf.declaration()<CR>", "Goto declaration" },
-- 		["gr"] = { "<CMD>lua vim.lsp.buf.references()<cr>", "Goto referencer" },
-- 	}, {
-- 		buffer = bufnr,
-- 	})
-- end)

-- lsp.format_on_save({
-- 	servers = {},
-- })

-- require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

-- lsp.setup()

-- -- null_ls
-- local null_ls = require("null-ls")
-- local null_opts = lsp.build_options("null-ls", {})


-- null_ls.setup({
--     debug = true,
-- 	on_attach = function(client, bufnr)
-- 		null_opts.on_attach(client, bufnr)
-- 	end,
-- 	sources = {
-- 		--- Replace these with the tools you have installed
-- 		            null_ls.builtins.formatting.stylua,
-- 		null_ls.builtins.formatting.prettier,
-- 	},
-- })

-- -- Keymaps --
-- wk.register({
-- 	l = {
-- 		i = { ":LspInfo<cr>", "LSP Info" },
-- 		f = { ":lua vim.lsp.buf.format()<cr>", "Format" },
-- 	},
-- }, {
-- 	prefix = "<leader>",
-- })
