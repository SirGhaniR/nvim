return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			providers = {
				snippets = { score_offset = 100 },
			},
		},
		keymap = { preset = "default" },
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = { documentation = { auto_show = false } },
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
}
