return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"lua",
				"vim",
			},
			auto_install = true,
			hightlight = { enable = true },
			indent = { enable = true },
		},
	},
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
}
