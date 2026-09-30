return {
	"akinsho/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim",
	},
	config = function()
		local flutterConfig = require("flutter-tools")

		flutterConfig.setup({
			ui = {
				border = "rounded",
				notification_style = "native",
			},
			decorations = {
				statusline = {
					app_version = true,
					device = true,
					project_config = true,
				},
			},
			debugger = {
				enabled = false,
				run_via_dap = false,
				exception_breakpoints = {},
			},
			root_patterns = { ".git", "pubspec.yaml" },
			fvm = true,
			widget_guides = {
				enabled = false,
			},
			closing_tags = {
				highlight = "Comment",
				prefix = "//",
				enabled = true,
			},
			dev_log = {
				enabled = true,
				notify_errors = true,
				open_cmd = "tabedit",
			},
			dev_tools = {
				autostart = false,
				auto_open_browser = false,
			},
			outline = {
				open_cmd = "30vnew",
				auto_open = false,
			},
			lsp = {
				analysisExcludedFolders = { "./fvm/" },
				settings = {
					showTodos = true,
					completeFunctionCalls = true,
					renameFilesWithClasses = "prompt",
					updateImportsOnRename = true,
				},
			},
		})
	end,
}
