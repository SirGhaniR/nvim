return {
	vim.lsp.config("cssls", {
		settings = {
			css = {
				validate = true,
				format = {
					tabSize = 2,
					insertSpaces = 2,
				},
				lint = {
					unknownAtRules = "ignore",
				},
			},
			scss = {
				validate = true,
				format = {
					tabSize = 2,
					insertSpaces = 2,
				},
			},
			less = {
				validate = true,
				format = {
					tabSize = 2,
					insertSpaces = 2,
				},
			},
		},
	}),
}
