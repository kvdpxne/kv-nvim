return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"vim",
        "vimdoc",
        "lua",
        "luadoc",
        "lua_patterns",
        "luau"
			},
      sync_install = false,
			auto_install = true,
			hightlight = {
        enable = true
      },
		},
	},
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
}
