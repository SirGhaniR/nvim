return {
	{ "lewis6991/gitsigns.nvim" },
	{
		"sindrets/diffview.nvim",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons", lazy = true },
		},
		config = function()
			require("diffview").setup({
				enhanced_diff_hl = true, -- Enable better diff highlighting
				use_icons = true, -- Use icons for file types
				view = {
					default = { layout = "diff2_horizontal" },
					merge_tool = { layout = "diff3_horizontal" },
				},
				file_panel = {
					listing_style = "tree",
					win_config = { position = "left", width = 35 },
				},
			})
		end,
	},
	{
		"NeogitOrg/neogit",
		lazy = true,
		dependencies = {
			"sindrets/diffview.nvim", -- optional
			"nvim-telescope/telescope.nvim", -- optional
		},
		cmd = "Neogit",
		config = function()
			require("neogit").setup({
				kind = "vsplit",
			})
		end,
	},
}
