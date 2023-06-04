vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	use({ "catppuccin/nvim", as = "catppuccin" })

	use({ "tpope/vim-surround" })

	use({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
	})

	use({ "nvim-telescope/telescope.nvim", tag = "0.1.1" })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	use("mbbill/undotree")

	use({ "akinsho/toggleterm.nvim", tag = "*" })

	use({ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } })

	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-nvim-lsp" })

	use({ "L3MON4D3/LuaSnip" })
	use({ "rafamadriz/friendly-snippets" })

	use({ "nvim-tree/nvim-tree.lua" })
	use({ "nvim-tree/nvim-web-devicons" })

	use({ "christoomey/vim-tmux-navigator" })
	use({ "szw/vim-maximizer" })

	use({ "nvim-lualine/lualine.nvim" })

	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")

	-- use {
	--     'VonHeikemen/lsp-zero.nvim',
	--     branch = 'v2.x',
	--     requires = {
	--         { 'neovim/nvim-lspconfig' },
	--         {
	--             'williamboman/mason.nvim',
	--             run = function()
	--                 pcall(vim.cmd, 'MasonUpdate')
	--             end,
	--         },
	--         { 'williamboman/mason-lspconfig.nvim' },
	--         -- Autocompletion
	--         { 'hrsh7th/nvim-cmp' },
	--         { 'hrsh7th/cmp-nvim-lsp' },
	--         { 'L3MON4D3/LuaSnip' },
	--     }
	-- }

	use({ "jose-elias-alvarez/null-ls.nvim" })
	use({ "jayp0521/mason-null-ls.nvim" })

	-- comments
	use({ "numToStr/Comment.nvim" })
	use({ "JoosepAlviste/nvim-ts-context-commentstring" })

	use({ "windwp/nvim-autopairs" })
	use({ "windwp/nvim-ts-autotag" })
end)
