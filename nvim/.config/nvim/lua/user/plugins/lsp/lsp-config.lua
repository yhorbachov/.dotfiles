local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

local cmp_nvim_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_status then
	return
end

local typescript_status, typescript = pcall(require, "typescript")
if not typescript_status then
	return
end

local wk = require("which-key")

wk.register({
	l = {
		name = "LSP",
		i = { ":LspInfo<CR>", "Info" },
	},
}, { prefix = "<leader>" })

local on_attach = function(client, bufnr)
	wk.register({
		["K"] = { "<cmd>Lspsaga hover_doc<cr>", "Symbol info" },
		["gd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Goto definition" },
		["gD"] = { "<CMD>lua vim.lsp.buf.declaration()<CR>", "Goto declaration" },
		["gr"] = { "<CMD>lua vim.lsp.buf.references()<cr>", "Goto referencer" },
		["<leader>la"] = { "<CMD>Lspsaga code_action<CR>", "Code action" },
		["<leader>lR"] = { "<CMD>Lspsaga rename<CR>", "Rename" },
		["<leader>ld"] = { "<CMD>Lspsaga show_line_diagnostics<CR>", "Show line diagnostics" },
		["<leader>lD"] = { "<CMD>Lspsaga show_buf_diagnostics<CR>", "Show line diagnostics" },
	}, {
		buffer = bufnr,
	})
end

local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig["html"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["lemminx"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["tailwindcss"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["tsserver"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["angularls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["jdtls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["rust_analyzer"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})


-- configure lua server (with special settings)
lspconfig["lua_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = { -- custom settings for lua
		Lua = {
			-- make the language server recognize "vim" global
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				-- make language server aware of runtime files
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})
