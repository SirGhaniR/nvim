return {
	"stevearc/oil.nvim",
	dependencies = {
		{ "nvim-mini/mini.icons", opts = {} },
		{
			"malewicz1337/oil-git.nvim",
			dependencies = { "stevearc/oil.nvim" },
			opts = {
				show_file_highlights = true,
				show_directory_highlights = false,
				show_ignored_files = true,
			},
		},
	},
	lazy = false,
	opts = {
		columns = {
			"icon",
			-- "permissions",
			"size",
			"mtime",
		},
		skip_confirm_for_simple_edits = true,
		view_options = {
			show_hidden = true,
			is_hidden_file = function(name)
				local m = name:match("^%.")
				return m ~= nil
			end,
		},
	},
}
